
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int app_cap_flags; } ;
struct octeon_device {int eswitch_mode; TYPE_1__ fw_info; } ;
struct netlink_ext_ack {int dummy; } ;
struct lio_devlink_priv {struct octeon_device* oct; } ;
struct devlink {int dummy; } ;




 int EINVAL ;
 int LIQUIDIO_SWITCHDEV_CAP ;
 struct lio_devlink_priv* devlink_priv (struct devlink*) ;
 int lio_vf_rep_create (struct octeon_device*) ;
 int lio_vf_rep_destroy (struct octeon_device*) ;

__attribute__((used)) static int
liquidio_eswitch_mode_set(struct devlink *devlink, u16 mode,
     struct netlink_ext_ack *extack)
{
 struct lio_devlink_priv *priv;
 struct octeon_device *oct;
 int ret = 0;

 priv = devlink_priv(devlink);
 oct = priv->oct;

 if (!(oct->fw_info.app_cap_flags & LIQUIDIO_SWITCHDEV_CAP))
  return -EINVAL;

 if (oct->eswitch_mode == mode)
  return 0;

 switch (mode) {
 case 128:
  oct->eswitch_mode = mode;
  ret = lio_vf_rep_create(oct);
  break;

 case 129:
  lio_vf_rep_destroy(oct);
  oct->eswitch_mode = mode;
  break;

 default:
  ret = -EINVAL;
 }

 return ret;
}
