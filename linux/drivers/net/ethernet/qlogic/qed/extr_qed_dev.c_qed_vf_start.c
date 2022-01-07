
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_hwfn {int b_int_enabled; } ;
struct qed_hw_init_params {scalar_t__ p_tunn; } ;


 int qed_vf_pf_tunnel_param_update (struct qed_hwfn*,scalar_t__) ;
 int qed_vf_set_vf_start_tunn_update_param (scalar_t__) ;

__attribute__((used)) static int qed_vf_start(struct qed_hwfn *p_hwfn,
   struct qed_hw_init_params *p_params)
{
 if (p_params->p_tunn) {
  qed_vf_set_vf_start_tunn_update_param(p_params->p_tunn);
  qed_vf_pf_tunnel_param_update(p_hwfn, p_params->p_tunn);
 }

 p_hwfn->b_int_enabled = 1;

 return 0;
}
