
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfp_pf {int dummy; } ;
struct devlink {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int devlink_params_publish (struct devlink*) ;
 int devlink_params_register (struct devlink*,int ,int ) ;
 int nfp_devlink_params ;
 int nfp_devlink_supports_params (struct nfp_pf*) ;
 struct devlink* priv_to_devlink (struct nfp_pf*) ;

int nfp_devlink_params_register(struct nfp_pf *pf)
{
 struct devlink *devlink = priv_to_devlink(pf);
 int err;

 err = nfp_devlink_supports_params(pf);
 if (err <= 0)
  return err;

 err = devlink_params_register(devlink, nfp_devlink_params,
          ARRAY_SIZE(nfp_devlink_params));
 if (err)
  return err;

 devlink_params_publish(devlink);
 return 0;
}
