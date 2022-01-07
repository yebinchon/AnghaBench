
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int ctrl_vnic; } ;


 int nfp_ctrl_close (int ) ;
 int nfp_net_pf_clean_vnic (struct nfp_pf*,int ) ;

__attribute__((used)) static void nfp_net_pf_app_stop_ctrl(struct nfp_pf *pf)
{
 if (!pf->ctrl_vnic)
  return;
 nfp_ctrl_close(pf->ctrl_vnic);
 nfp_net_pf_clean_vnic(pf, pf->ctrl_vnic);
}
