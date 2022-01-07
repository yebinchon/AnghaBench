
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qed_rdma_qp {int iwarp_state; int icid; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
typedef enum qed_iwarp_qp_state { ____Placeholder_qed_iwarp_qp_state } qed_iwarp_qp_state ;
struct TYPE_3__ {int qp_lock; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ,char*) ;
 int EINVAL ;





 int QED_MSG_RDMA ;
 int * iwarp_state_names ;
 int qed_iwarp_modify_fw (struct qed_hwfn*,struct qed_rdma_qp*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int
qed_iwarp_modify_qp(struct qed_hwfn *p_hwfn,
      struct qed_rdma_qp *qp,
      enum qed_iwarp_qp_state new_state, bool internal)
{
 enum qed_iwarp_qp_state prev_iw_state;
 bool modify_fw = 0;
 int rc = 0;




 spin_lock_bh(&p_hwfn->p_rdma_info->iwarp.qp_lock);
 prev_iw_state = qp->iwarp_state;

 if (prev_iw_state == new_state) {
  spin_unlock_bh(&p_hwfn->p_rdma_info->iwarp.qp_lock);
  return 0;
 }

 switch (prev_iw_state) {
 case 130:
  switch (new_state) {
  case 129:
   qp->iwarp_state = 129;
   break;
  case 131:
   qp->iwarp_state = 131;
   if (!internal)
    modify_fw = 1;
   break;
  default:
   break;
  }
  break;
 case 129:
  switch (new_state) {
  case 132:
   if (!internal)
    modify_fw = 1;

   qp->iwarp_state = 132;
   break;
  case 131:
   if (!internal)
    modify_fw = 1;
   qp->iwarp_state = 131;
   break;
  default:
   break;
  }
  break;
 case 131:
  switch (new_state) {
  case 130:

   qp->iwarp_state = new_state;
   break;
  case 132:

   break;
  default:
   rc = -EINVAL;
  }
  break;
 case 128:
 case 132:
  qp->iwarp_state = new_state;
  break;
 default:
  break;
 }

 DP_VERBOSE(p_hwfn, QED_MSG_RDMA, "QP(0x%x) %s --> %s%s\n",
     qp->icid,
     iwarp_state_names[prev_iw_state],
     iwarp_state_names[qp->iwarp_state],
     internal ? "internal" : "");

 spin_unlock_bh(&p_hwfn->p_rdma_info->iwarp.qp_lock);

 if (modify_fw)
  rc = qed_iwarp_modify_fw(p_hwfn, qp);

 return rc;
}
