
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int lo; int hi; } ;
struct TYPE_6__ {int protocol_id; int cmd_id; int cid; } ;
struct TYPE_8__ {TYPE_3__ data_ptr; TYPE_2__ hdr; } ;
struct TYPE_5__ {int function; } ;
struct qed_spq_entry {int comp_mode; TYPE_4__ elem; TYPE_1__ comp_cb; scalar_t__ flags; } ;
struct qed_hwfn {int dummy; } ;


 int DP_NOTICE (struct qed_hwfn*,char*,int) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ,int ,int ,int ) ;
 int D_TRINE (int,int const,int const,char*,char*,char*) ;
 int EINVAL ;
 int QED_MSG_SPQ ;



 int qed_spq_blocking_cb ;

__attribute__((used)) static int qed_spq_fill_entry(struct qed_hwfn *p_hwfn,
         struct qed_spq_entry *p_ent)
{
 p_ent->flags = 0;

 switch (p_ent->comp_mode) {
 case 128:
 case 130:
  p_ent->comp_cb.function = qed_spq_blocking_cb;
  break;
 case 129:
  break;
 default:
  DP_NOTICE(p_hwfn, "Unknown SPQE completion mode %d\n",
     p_ent->comp_mode);
  return -EINVAL;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_SPQ,
     "Ramrod header: [CID 0x%08x CMD 0x%02x protocol 0x%02x] Data pointer: [%08x:%08x] Completion Mode: %s\n",
     p_ent->elem.hdr.cid,
     p_ent->elem.hdr.cmd_id,
     p_ent->elem.hdr.protocol_id,
     p_ent->elem.data_ptr.hi,
     p_ent->elem.data_ptr.lo,
     D_TRINE(p_ent->comp_mode, 128,
      130, "MODE_EBLOCK", "MODE_BLOCK",
      "MODE_CB"));

 return 0;
}
