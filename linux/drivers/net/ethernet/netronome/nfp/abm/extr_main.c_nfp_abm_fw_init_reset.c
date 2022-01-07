
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_abm {unsigned int num_bands; int red_support; } ;


 int NFP_ABM_ACT_DROP ;
 int NFP_ABM_LVL_INFINITY ;
 unsigned int NFP_NET_MAX_RX_RINGS ;
 int __nfp_abm_ctrl_set_q_act (struct nfp_abm*,unsigned int,int ) ;
 int __nfp_abm_ctrl_set_q_lvl (struct nfp_abm*,unsigned int,int ) ;
 int nfp_abm_ctrl_qm_disable (struct nfp_abm*) ;

__attribute__((used)) static int nfp_abm_fw_init_reset(struct nfp_abm *abm)
{
 unsigned int i;

 if (!abm->red_support)
  return 0;

 for (i = 0; i < abm->num_bands * NFP_NET_MAX_RX_RINGS; i++) {
  __nfp_abm_ctrl_set_q_lvl(abm, i, NFP_ABM_LVL_INFINITY);
  __nfp_abm_ctrl_set_q_act(abm, i, NFP_ABM_ACT_DROP);
 }

 return nfp_abm_ctrl_qm_disable(abm);
}
