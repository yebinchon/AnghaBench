
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_sp_vport_start_params {int only_untagged; int max_buffers_per_cqe; int tpa_mode; int remove_inner_vlan; int mtu; int vport_id; } ;
struct qed_hwfn {int cdev; } ;


 scalar_t__ IS_VF (int ) ;
 int qed_sp_eth_vport_start (struct qed_hwfn*,struct qed_sp_vport_start_params*) ;
 int qed_vf_pf_vport_start (struct qed_hwfn*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int qed_sp_vport_start(struct qed_hwfn *p_hwfn,
         struct qed_sp_vport_start_params *p_params)
{
 if (IS_VF(p_hwfn->cdev)) {
  return qed_vf_pf_vport_start(p_hwfn, p_params->vport_id,
          p_params->mtu,
          p_params->remove_inner_vlan,
          p_params->tpa_mode,
          p_params->max_buffers_per_cqe,
          p_params->only_untagged);
 }

 return qed_sp_eth_vport_start(p_hwfn, p_params);
}
