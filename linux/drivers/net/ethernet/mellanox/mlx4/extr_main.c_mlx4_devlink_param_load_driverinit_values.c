
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


union devlink_param_value {scalar_t__ vbool; int vu32; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct mlx4_priv {struct mlx4_dev dev; } ;
struct mlx4_fw_crdump {scalar_t__ snapshot_enable; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {struct mlx4_fw_crdump crdump; } ;


 int DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET ;
 int DEVLINK_PARAM_GENERIC_ID_MAX_MACS ;
 int DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT ;
 int MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR ;
 int MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE ;
 int devlink_param_driverinit_value_get (struct devlink*,int ,union devlink_param_value*) ;
 int devlink_param_value_changed (struct devlink*,int ) ;
 struct mlx4_priv* devlink_priv (struct devlink*) ;
 scalar_t__ enable_4k_uar ;
 scalar_t__ enable_64b_cqe_eqe ;
 int log_num_mac ;
 scalar_t__ mlx4_internal_err_reset ;
 int order_base_2 (int ) ;

__attribute__((used)) static void mlx4_devlink_param_load_driverinit_values(struct devlink *devlink)
{
 struct mlx4_priv *priv = devlink_priv(devlink);
 struct mlx4_dev *dev = &priv->dev;
 struct mlx4_fw_crdump *crdump = &dev->persist->crdump;
 union devlink_param_value saved_value;
 int err;

 err = devlink_param_driverinit_value_get(devlink,
       DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET,
       &saved_value);
 if (!err && mlx4_internal_err_reset != saved_value.vbool) {
  mlx4_internal_err_reset = saved_value.vbool;

  devlink_param_value_changed(devlink,
         DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET);
 }
 err = devlink_param_driverinit_value_get(devlink,
       DEVLINK_PARAM_GENERIC_ID_MAX_MACS,
       &saved_value);
 if (!err)
  log_num_mac = order_base_2(saved_value.vu32);
 err = devlink_param_driverinit_value_get(devlink,
       MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE,
       &saved_value);
 if (!err)
  enable_64b_cqe_eqe = saved_value.vbool;
 err = devlink_param_driverinit_value_get(devlink,
       MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR,
       &saved_value);
 if (!err)
  enable_4k_uar = saved_value.vbool;
 err = devlink_param_driverinit_value_get(devlink,
       DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT,
       &saved_value);
 if (!err && crdump->snapshot_enable != saved_value.vbool) {
  crdump->snapshot_enable = saved_value.vbool;
  devlink_param_value_changed(devlink,
         DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT);
 }
}
