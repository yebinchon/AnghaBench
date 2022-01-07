
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int app; scalar_t__ num_vfs; int ctrl_vnic; } ;


 int nfp_app_sriov_enable (int ,scalar_t__) ;
 int nfp_app_start (int ,int ) ;
 int nfp_app_stop (int ) ;
 int nfp_net_pf_app_start_ctrl (struct nfp_pf*) ;
 int nfp_net_pf_app_stop_ctrl (struct nfp_pf*) ;

__attribute__((used)) static int nfp_net_pf_app_start(struct nfp_pf *pf)
{
 int err;

 err = nfp_net_pf_app_start_ctrl(pf);
 if (err)
  return err;

 err = nfp_app_start(pf->app, pf->ctrl_vnic);
 if (err)
  goto err_ctrl_stop;

 if (pf->num_vfs) {
  err = nfp_app_sriov_enable(pf->app, pf->num_vfs);
  if (err)
   goto err_app_stop;
 }

 return 0;

err_app_stop:
 nfp_app_stop(pf->app);
err_ctrl_stop:
 nfp_net_pf_app_stop_ctrl(pf);
 return err;
}
