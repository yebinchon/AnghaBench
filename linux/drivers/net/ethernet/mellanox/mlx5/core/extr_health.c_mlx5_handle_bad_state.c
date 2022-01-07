
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int fatal_error; } ;
struct TYPE_4__ {TYPE_1__ health; } ;
struct mlx5_core_dev {TYPE_2__ priv; } ;






 int MLX5_SENSOR_PCI_COMM_ERR ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,...) ;
 int mlx5_disable_device (struct mlx5_core_dev*) ;
 int mlx5_get_nic_state (struct mlx5_core_dev*) ;

__attribute__((used)) static void mlx5_handle_bad_state(struct mlx5_core_dev *dev)
{
 u8 nic_interface = mlx5_get_nic_state(dev);

 switch (nic_interface) {
 case 130:
  mlx5_core_warn(dev, "Expected to see disabled NIC but it is full driver\n");
  break;

 case 131:
  mlx5_core_warn(dev, "starting teardown\n");
  break;

 case 129:
  mlx5_core_warn(dev, "Expected to see disabled NIC but it is no dram nic\n");
  break;

 case 128:
  if (dev->priv.health.fatal_error != MLX5_SENSOR_PCI_COMM_ERR)
   mlx5_core_warn(dev, "NIC SW reset in progress\n");
  break;

 default:
  mlx5_core_warn(dev, "Expected to see disabled NIC but it is has invalid value %d\n",
          nic_interface);
 }

 mlx5_disable_device(dev);
}
