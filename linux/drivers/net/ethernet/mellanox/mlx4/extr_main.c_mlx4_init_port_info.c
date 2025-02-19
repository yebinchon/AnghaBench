
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int mode; int name; } ;
struct TYPE_12__ {TYPE_3__ attr; int show; int store; } ;
struct mlx4_port_info {int port; int devlink_port; TYPE_6__ port_attr; struct mlx4_dev* dev; TYPE_6__ port_mtu_attr; int dev_mtu_name; int dev_name; int base_qpn; int gid_table; int vlan_table; int mac_table; } ;
struct mlx4_dev {TYPE_2__* persist; } ;
struct devlink {int dummy; } ;
struct TYPE_11__ {struct mlx4_port_info* port; } ;
struct TYPE_9__ {TYPE_1__* pdev; } ;
struct TYPE_8__ {int dev; } ;


 int device_create_file (int *,TYPE_6__*) ;
 int device_remove_file (int *,TYPE_6__*) ;
 int devlink_port_register (struct devlink*,int *,int) ;
 int devlink_port_unregister (int *) ;
 int mlx4_err (struct mlx4_dev*,char*,int) ;
 int mlx4_get_base_qpn (struct mlx4_dev*,int) ;
 int mlx4_init_mac_table (struct mlx4_dev*,int *) ;
 int mlx4_init_roce_gid_table (struct mlx4_dev*,int *) ;
 int mlx4_init_vlan_table (struct mlx4_dev*,int *) ;
 scalar_t__ mlx4_is_mfunc (struct mlx4_dev*) ;
 int mlx4_is_slave (struct mlx4_dev*) ;
 TYPE_4__* mlx4_priv (struct mlx4_dev*) ;
 struct devlink* priv_to_devlink (TYPE_4__*) ;
 int set_port_ib_mtu ;
 int set_port_type ;
 int show_port_ib_mtu ;
 int show_port_type ;
 int sprintf (int ,char*,int) ;
 int sysfs_attr_init (TYPE_3__*) ;

__attribute__((used)) static int mlx4_init_port_info(struct mlx4_dev *dev, int port)
{
 struct devlink *devlink = priv_to_devlink(mlx4_priv(dev));
 struct mlx4_port_info *info = &mlx4_priv(dev)->port[port];
 int err;

 err = devlink_port_register(devlink, &info->devlink_port, port);
 if (err)
  return err;

 info->dev = dev;
 info->port = port;
 if (!mlx4_is_slave(dev)) {
  mlx4_init_mac_table(dev, &info->mac_table);
  mlx4_init_vlan_table(dev, &info->vlan_table);
  mlx4_init_roce_gid_table(dev, &info->gid_table);
  info->base_qpn = mlx4_get_base_qpn(dev, port);
 }

 sprintf(info->dev_name, "mlx4_port%d", port);
 info->port_attr.attr.name = info->dev_name;
 if (mlx4_is_mfunc(dev)) {
  info->port_attr.attr.mode = 0444;
 } else {
  info->port_attr.attr.mode = 0644;
  info->port_attr.store = set_port_type;
 }
 info->port_attr.show = show_port_type;
 sysfs_attr_init(&info->port_attr.attr);

 err = device_create_file(&dev->persist->pdev->dev, &info->port_attr);
 if (err) {
  mlx4_err(dev, "Failed to create file for port %d\n", port);
  devlink_port_unregister(&info->devlink_port);
  info->port = -1;
  return err;
 }

 sprintf(info->dev_mtu_name, "mlx4_port%d_mtu", port);
 info->port_mtu_attr.attr.name = info->dev_mtu_name;
 if (mlx4_is_mfunc(dev)) {
  info->port_mtu_attr.attr.mode = 0444;
 } else {
  info->port_mtu_attr.attr.mode = 0644;
  info->port_mtu_attr.store = set_port_ib_mtu;
 }
 info->port_mtu_attr.show = show_port_ib_mtu;
 sysfs_attr_init(&info->port_mtu_attr.attr);

 err = device_create_file(&dev->persist->pdev->dev,
     &info->port_mtu_attr);
 if (err) {
  mlx4_err(dev, "Failed to create mtu file for port %d\n", port);
  device_remove_file(&info->dev->persist->pdev->dev,
       &info->port_attr);
  devlink_port_unregister(&info->devlink_port);
  info->port = -1;
  return err;
 }

 return 0;
}
