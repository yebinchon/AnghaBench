
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int app; scalar_t__ num_vfs; } ;


 int nfp_app_sriov_disable (int ) ;
 int nfp_app_stop (int ) ;
 int nfp_net_pf_app_stop_ctrl (struct nfp_pf*) ;

__attribute__((used)) static void nfp_net_pf_app_stop(struct nfp_pf *pf)
{
 if (pf->num_vfs)
  nfp_app_sriov_disable(pf->app);
 nfp_app_stop(pf->app);
 nfp_net_pf_app_stop_ctrl(pf);
}
