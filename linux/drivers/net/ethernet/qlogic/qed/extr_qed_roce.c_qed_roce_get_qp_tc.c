
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qed_rdma_qp {int vlan_id; int icid; } ;
struct qed_hwfn {int dummy; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int,char*) ;
 int QED_MSG_SP ;
 int VLAN_PRIO_MASK ;
 int VLAN_PRIO_SHIFT ;
 int qed_dcbx_get_priority_tc (struct qed_hwfn*,int) ;

__attribute__((used)) static u8 qed_roce_get_qp_tc(struct qed_hwfn *p_hwfn, struct qed_rdma_qp *qp)
{
 u8 pri, tc = 0;

 if (qp->vlan_id) {
  pri = (qp->vlan_id & VLAN_PRIO_MASK) >> VLAN_PRIO_SHIFT;
  tc = qed_dcbx_get_priority_tc(p_hwfn, pri);
 }

 DP_VERBOSE(p_hwfn, QED_MSG_SP,
     "qp icid %u tc: %u (vlan priority %s)\n",
     qp->icid, tc, qp->vlan_id ? "enabled" : "disabled");

 return tc;
}
