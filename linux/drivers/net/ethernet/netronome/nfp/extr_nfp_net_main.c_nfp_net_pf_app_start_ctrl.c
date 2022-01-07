
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int ctrl_vnic; } ;


 int nfp_ctrl_open (int ) ;
 int nfp_net_pf_clean_vnic (struct nfp_pf*,int ) ;
 int nfp_net_pf_init_vnic (struct nfp_pf*,int ,int ) ;

__attribute__((used)) static int nfp_net_pf_app_start_ctrl(struct nfp_pf *pf)
{
 int err;

 if (!pf->ctrl_vnic)
  return 0;
 err = nfp_net_pf_init_vnic(pf, pf->ctrl_vnic, 0);
 if (err)
  return err;

 err = nfp_ctrl_open(pf->ctrl_vnic);
 if (err)
  goto err_clean_ctrl;

 return 0;

err_clean_ctrl:
 nfp_net_pf_clean_vnic(pf, pf->ctrl_vnic);
 return err;
}
