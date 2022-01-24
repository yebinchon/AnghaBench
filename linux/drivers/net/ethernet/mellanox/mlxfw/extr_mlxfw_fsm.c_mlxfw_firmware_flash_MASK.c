#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct netlink_ext_ack {int dummy; } ;
struct mlxfw_mfa2_file {int dummy; } ;
struct mlxfw_dev {TYPE_1__* ops; } ;
struct firmware {int dummy; } ;
struct TYPE_2__ {int (* fsm_lock ) (struct mlxfw_dev*,int /*<<< orphan*/ *) ;int (* fsm_activate ) (struct mlxfw_dev*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* fsm_release ) (struct mlxfw_dev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlxfw_mfa2_file*) ; 
 int /*<<< orphan*/  MLXFW_FSM_STATE_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int FUNC2 (struct mlxfw_mfa2_file*) ; 
 int FUNC3 (struct mlxfw_dev*,int /*<<< orphan*/ ,struct mlxfw_mfa2_file*,struct netlink_ext_ack*) ; 
 int FUNC4 (struct mlxfw_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC5 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlxfw_mfa2_file*) ; 
 struct mlxfw_mfa2_file* FUNC7 (struct firmware const*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlxfw_dev*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (struct mlxfw_dev*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct mlxfw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mlxfw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mlxfw_dev*,int /*<<< orphan*/ ) ; 

int FUNC16(struct mlxfw_dev *mlxfw_dev,
			 const struct firmware *firmware,
			 struct netlink_ext_ack *extack)
{
	struct mlxfw_mfa2_file *mfa2_file;
	u32 fwhandle;
	int err;

	if (!FUNC5(firmware)) {
		FUNC10("Firmware file is not MFA2\n");
		FUNC1(extack, "Firmware file is not MFA2");
		return -EINVAL;
	}

	mfa2_file = FUNC7(firmware);
	if (FUNC0(mfa2_file))
		return FUNC2(mfa2_file);

	FUNC11("Initialize firmware flash process\n");
	FUNC8(mlxfw_dev, "Initializing firmware flash process",
			    NULL, 0, 0);
	err = mlxfw_dev->ops->fsm_lock(mlxfw_dev, &fwhandle);
	if (err) {
		FUNC10("Could not lock the firmware FSM\n");
		FUNC1(extack, "Could not lock the firmware FSM");
		goto err_fsm_lock;
	}

	err = FUNC4(mlxfw_dev, fwhandle,
				   MLXFW_FSM_STATE_LOCKED, extack);
	if (err)
		goto err_state_wait_idle_to_locked;

	err = FUNC3(mlxfw_dev, fwhandle, mfa2_file, extack);
	if (err)
		goto err_flash_components;

	FUNC9("Activate image\n");
	FUNC8(mlxfw_dev, "Activating image", NULL, 0, 0);
	err = mlxfw_dev->ops->fsm_activate(mlxfw_dev, fwhandle);
	if (err) {
		FUNC10("Could not activate the downloaded image\n");
		FUNC1(extack, "Could not activate the downloaded image");
		goto err_fsm_activate;
	}

	err = FUNC4(mlxfw_dev, fwhandle,
				   MLXFW_FSM_STATE_LOCKED, extack);
	if (err)
		goto err_state_wait_activate_to_locked;

	FUNC9("Handle release\n");
	mlxfw_dev->ops->fsm_release(mlxfw_dev, fwhandle);

	FUNC11("Firmware flash done.\n");
	FUNC8(mlxfw_dev, "Firmware flash done", NULL, 0, 0);
	FUNC6(mfa2_file);
	return 0;

err_state_wait_activate_to_locked:
err_fsm_activate:
err_flash_components:
err_state_wait_idle_to_locked:
	mlxfw_dev->ops->fsm_release(mlxfw_dev, fwhandle);
err_fsm_lock:
	FUNC6(mfa2_file);
	return err;
}