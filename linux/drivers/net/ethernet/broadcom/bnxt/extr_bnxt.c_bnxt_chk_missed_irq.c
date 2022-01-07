
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int fw_ring_id; } ;
struct bnxt_cp_ring_info {scalar_t__ cp_raw_cons; scalar_t__ last_cp_raw_cons; int missed_irqs; TYPE_1__ cp_ring_struct; scalar_t__ has_more_work; struct bnxt_cp_ring_info** cp_ring_arr; } ;
struct bnxt_napi {struct bnxt_cp_ring_info cp_ring; } ;
struct bnxt {int flags; int cp_nr_rings; struct bnxt_napi** bnapi; } ;


 int BNXT_FLAG_CHIP_P5 ;
 int DBG_RING_INFO_GET_REQ_RING_TYPE_L2_CMPL ;
 int bnxt_dbg_hwrm_ring_info_get (struct bnxt*,int ,int ,int *,int *) ;
 int bnxt_has_work (struct bnxt*,struct bnxt_cp_ring_info*) ;

__attribute__((used)) static void bnxt_chk_missed_irq(struct bnxt *bp)
{
 int i;

 if (!(bp->flags & BNXT_FLAG_CHIP_P5))
  return;

 for (i = 0; i < bp->cp_nr_rings; i++) {
  struct bnxt_napi *bnapi = bp->bnapi[i];
  struct bnxt_cp_ring_info *cpr;
  u32 fw_ring_id;
  int j;

  if (!bnapi)
   continue;

  cpr = &bnapi->cp_ring;
  for (j = 0; j < 2; j++) {
   struct bnxt_cp_ring_info *cpr2 = cpr->cp_ring_arr[j];
   u32 val[2];

   if (!cpr2 || cpr2->has_more_work ||
       !bnxt_has_work(bp, cpr2))
    continue;

   if (cpr2->cp_raw_cons != cpr2->last_cp_raw_cons) {
    cpr2->last_cp_raw_cons = cpr2->cp_raw_cons;
    continue;
   }
   fw_ring_id = cpr2->cp_ring_struct.fw_ring_id;
   bnxt_dbg_hwrm_ring_info_get(bp,
    DBG_RING_INFO_GET_REQ_RING_TYPE_L2_CMPL,
    fw_ring_id, &val[0], &val[1]);
   cpr->missed_irqs++;
  }
 }
}
