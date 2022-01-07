
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_params_unregister (int ,int ,int ) ;
 int nfp_devlink_params ;
 int nfp_devlink_supports_params (struct nfp_pf*) ;
 int priv_to_devlink (struct nfp_pf*) ;

void nfp_devlink_params_unregister(struct nfp_pf *pf)
{
 int err;

 err = nfp_devlink_supports_params(pf);
 if (err <= 0)
  return;

 devlink_params_unregister(priv_to_devlink(pf), nfp_devlink_params,
      ARRAY_SIZE(nfp_devlink_params));
}
