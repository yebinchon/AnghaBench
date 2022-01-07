
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;


 int EOPNOTSUPP ;
 int devlink_priv (struct devlink*) ;
 int nfp_flash_update_common (int ,char const*,struct netlink_ext_ack*) ;

__attribute__((used)) static int
nfp_devlink_flash_update(struct devlink *devlink, const char *path,
    const char *component, struct netlink_ext_ack *extack)
{
 if (component)
  return -EOPNOTSUPP;
 return nfp_flash_update_common(devlink_priv(devlink), path, extack);
}
