
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct mlx5_core_dev {TYPE_1__* iseg; } ;
struct TYPE_2__ {int initializing; } ;


 int MLX5_FW_RESET_SUPPORTED_OFFSET ;
 int MLX5_NIC_IFC_SW_RESET ;
 scalar_t__ MLX5_SENSOR_NIC_DISABLED ;
 scalar_t__ MLX5_SENSOR_NIC_SW_RESET ;
 scalar_t__ MLX5_SENSOR_PCI_COMM_ERR ;
 scalar_t__ check_fatal_sensors (struct mlx5_core_dev*) ;
 int ioread32be (int *) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;
 int mlx5_set_nic_state (struct mlx5_core_dev*,int ) ;

__attribute__((used)) static bool reset_fw_if_needed(struct mlx5_core_dev *dev)
{
 bool supported = (ioread32be(&dev->iseg->initializing) >>
     MLX5_FW_RESET_SUPPORTED_OFFSET) & 1;
 u32 fatal_error;

 if (!supported)
  return 0;






 fatal_error = check_fatal_sensors(dev);
 if (fatal_error == MLX5_SENSOR_PCI_COMM_ERR ||
     fatal_error == MLX5_SENSOR_NIC_DISABLED ||
     fatal_error == MLX5_SENSOR_NIC_SW_RESET) {
  mlx5_core_warn(dev, "Not issuing FW reset. Either it's already done or won't help.");
  return 0;
 }

 mlx5_core_warn(dev, "Issuing FW Reset\n");



 mlx5_set_nic_state(dev, MLX5_NIC_IFC_SW_RESET);

 return 1;
}
