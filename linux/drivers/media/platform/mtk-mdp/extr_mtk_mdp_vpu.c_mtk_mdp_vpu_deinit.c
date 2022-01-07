
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_vpu {int dummy; } ;


 int AP_MDP_DEINIT ;
 int mtk_mdp_vpu_send_ap_ipi (struct mtk_mdp_vpu*,int ) ;

int mtk_mdp_vpu_deinit(struct mtk_mdp_vpu *vpu)
{
 return mtk_mdp_vpu_send_ap_ipi(vpu, AP_MDP_DEINIT);
}
