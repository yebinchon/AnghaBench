
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_pf {int app; } ;
struct devlink {int dummy; } ;


 struct nfp_pf* devlink_priv (struct devlink*) ;
 int nfp_app_eswitch_mode_get (int ,int *) ;

__attribute__((used)) static int nfp_devlink_eswitch_mode_get(struct devlink *devlink, u16 *mode)
{
 struct nfp_pf *pf = devlink_priv(devlink);

 return nfp_app_eswitch_mode_get(pf->app, mode);
}
