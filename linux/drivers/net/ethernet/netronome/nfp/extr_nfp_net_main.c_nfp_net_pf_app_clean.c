
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int * app; int lock; int ctrl_vnic_bar; scalar_t__ ctrl_vnic; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfp_app_clean (int *) ;
 int nfp_app_free (int *) ;
 int nfp_cpp_area_release_free (int ) ;
 int nfp_net_pf_free_vnic (struct nfp_pf*,scalar_t__) ;

__attribute__((used)) static void nfp_net_pf_app_clean(struct nfp_pf *pf)
{
 if (pf->ctrl_vnic) {
  nfp_net_pf_free_vnic(pf, pf->ctrl_vnic);
  nfp_cpp_area_release_free(pf->ctrl_vnic_bar);
 }

 mutex_lock(&pf->lock);
 nfp_app_clean(pf->app);
 mutex_unlock(&pf->lock);

 nfp_app_free(pf->app);
 pf->app = ((void*)0);
}
