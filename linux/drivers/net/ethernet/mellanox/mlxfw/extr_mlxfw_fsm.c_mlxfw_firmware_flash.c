
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;
struct mlxfw_dev {TYPE_1__* ops; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int (* fsm_lock ) (struct mlxfw_dev*,int *) ;int (* fsm_activate ) (struct mlxfw_dev*,int ) ;int (* fsm_release ) (struct mlxfw_dev*,int ) ;} ;


 int EINVAL ;
 scalar_t__ IS_ERR (struct mlxfw_mfa2_file*) ;
 int MLXFW_FSM_STATE_LOCKED ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int PTR_ERR (struct mlxfw_mfa2_file*) ;
 int mlxfw_flash_components (struct mlxfw_dev*,int ,struct mlxfw_mfa2_file*,struct netlink_ext_ack*) ;
 int mlxfw_fsm_state_wait (struct mlxfw_dev*,int ,int ,struct netlink_ext_ack*) ;
 int mlxfw_mfa2_check (struct firmware const*) ;
 int mlxfw_mfa2_file_fini (struct mlxfw_mfa2_file*) ;
 struct mlxfw_mfa2_file* mlxfw_mfa2_file_init (struct firmware const*) ;
 int mlxfw_status_notify (struct mlxfw_dev*,char*,int *,int ,int ) ;
 int pr_debug (char*) ;
 int pr_err (char*) ;
 int pr_info (char*) ;
 int stub1 (struct mlxfw_dev*,int *) ;
 int stub2 (struct mlxfw_dev*,int ) ;
 int stub3 (struct mlxfw_dev*,int ) ;
 int stub4 (struct mlxfw_dev*,int ) ;

int mlxfw_firmware_flash(struct mlxfw_dev *mlxfw_dev,
    const struct firmware *firmware,
    struct netlink_ext_ack *extack)
{
 struct mlxfw_mfa2_file *mfa2_file;
 u32 fwhandle;
 int err;

 if (!mlxfw_mfa2_check(firmware)) {
  pr_err("Firmware file is not MFA2\n");
  NL_SET_ERR_MSG_MOD(extack, "Firmware file is not MFA2");
  return -EINVAL;
 }

 mfa2_file = mlxfw_mfa2_file_init(firmware);
 if (IS_ERR(mfa2_file))
  return PTR_ERR(mfa2_file);

 pr_info("Initialize firmware flash process\n");
 mlxfw_status_notify(mlxfw_dev, "Initializing firmware flash process",
       ((void*)0), 0, 0);
 err = mlxfw_dev->ops->fsm_lock(mlxfw_dev, &fwhandle);
 if (err) {
  pr_err("Could not lock the firmware FSM\n");
  NL_SET_ERR_MSG_MOD(extack, "Could not lock the firmware FSM");
  goto err_fsm_lock;
 }

 err = mlxfw_fsm_state_wait(mlxfw_dev, fwhandle,
       MLXFW_FSM_STATE_LOCKED, extack);
 if (err)
  goto err_state_wait_idle_to_locked;

 err = mlxfw_flash_components(mlxfw_dev, fwhandle, mfa2_file, extack);
 if (err)
  goto err_flash_components;

 pr_debug("Activate image\n");
 mlxfw_status_notify(mlxfw_dev, "Activating image", ((void*)0), 0, 0);
 err = mlxfw_dev->ops->fsm_activate(mlxfw_dev, fwhandle);
 if (err) {
  pr_err("Could not activate the downloaded image\n");
  NL_SET_ERR_MSG_MOD(extack, "Could not activate the downloaded image");
  goto err_fsm_activate;
 }

 err = mlxfw_fsm_state_wait(mlxfw_dev, fwhandle,
       MLXFW_FSM_STATE_LOCKED, extack);
 if (err)
  goto err_state_wait_activate_to_locked;

 pr_debug("Handle release\n");
 mlxfw_dev->ops->fsm_release(mlxfw_dev, fwhandle);

 pr_info("Firmware flash done.\n");
 mlxfw_status_notify(mlxfw_dev, "Firmware flash done", ((void*)0), 0, 0);
 mlxfw_mfa2_file_fini(mfa2_file);
 return 0;

err_state_wait_activate_to_locked:
err_fsm_activate:
err_flash_components:
err_state_wait_idle_to_locked:
 mlxfw_dev->ops->fsm_release(mlxfw_dev, fwhandle);
err_fsm_lock:
 mlxfw_mfa2_file_fini(mfa2_file);
 return err;
}
