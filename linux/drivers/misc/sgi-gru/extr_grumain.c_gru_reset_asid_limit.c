
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct gru_state {int gs_gid; int gs_asid_limit; int gs_asid; TYPE_3__** gs_gts; } ;
struct TYPE_6__ {TYPE_2__* ts_gms; } ;
struct TYPE_5__ {TYPE_1__* ms_asids; } ;
struct TYPE_4__ {int mt_asid; } ;


 scalar_t__ ASID_INC ;
 int GRU_NUM_CCH ;
 int MAX_ASID ;
 int STAT (int ) ;
 int asid_next ;
 int gru_dbg (int ,char*,int,...) ;
 int gru_flush_all_tlb (struct gru_state*) ;
 int gru_wrap_asid (struct gru_state*) ;
 int grudev ;
 scalar_t__ is_kernel_context (TYPE_3__*) ;

__attribute__((used)) static int gru_reset_asid_limit(struct gru_state *gru, int asid)
{
 int i, gid, inuse_asid, limit;

 gru_dbg(grudev, "gid %d, asid 0x%x\n", gru->gs_gid, asid);
 STAT(asid_next);
 limit = MAX_ASID;
 if (asid >= limit)
  asid = gru_wrap_asid(gru);
 gru_flush_all_tlb(gru);
 gid = gru->gs_gid;
again:
 for (i = 0; i < GRU_NUM_CCH; i++) {
  if (!gru->gs_gts[i] || is_kernel_context(gru->gs_gts[i]))
   continue;
  inuse_asid = gru->gs_gts[i]->ts_gms->ms_asids[gid].mt_asid;
  gru_dbg(grudev, "gid %d, gts %p, gms %p, inuse 0x%x, cxt %d\n",
   gru->gs_gid, gru->gs_gts[i], gru->gs_gts[i]->ts_gms,
   inuse_asid, i);
  if (inuse_asid == asid) {
   asid += ASID_INC;
   if (asid >= limit) {




    limit = MAX_ASID;
    if (asid >= MAX_ASID)
     asid = gru_wrap_asid(gru);
    goto again;
   }
  }

  if ((inuse_asid > asid) && (inuse_asid < limit))
   limit = inuse_asid;
 }
 gru->gs_asid_limit = limit;
 gru->gs_asid = asid;
 gru_dbg(grudev, "gid %d, new asid 0x%x, new_limit 0x%x\n", gru->gs_gid,
     asid, limit);
 return asid;
}
