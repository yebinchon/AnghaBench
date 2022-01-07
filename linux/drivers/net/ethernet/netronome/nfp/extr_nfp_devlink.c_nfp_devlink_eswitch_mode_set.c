
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_pf {int lock; int app; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;


 struct nfp_pf* devlink_priv (struct devlink*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nfp_app_eswitch_mode_set (int ,int ) ;

__attribute__((used)) static int nfp_devlink_eswitch_mode_set(struct devlink *devlink, u16 mode,
     struct netlink_ext_ack *extack)
{
 struct nfp_pf *pf = devlink_priv(devlink);
 int ret;

 mutex_lock(&pf->lock);
 ret = nfp_app_eswitch_mode_set(pf->app, mode);
 mutex_unlock(&pf->lock);

 return ret;
}
