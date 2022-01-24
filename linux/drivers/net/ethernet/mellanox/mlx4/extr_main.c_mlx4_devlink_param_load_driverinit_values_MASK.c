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
union devlink_param_value {scalar_t__ vbool; int /*<<< orphan*/  vu32; } ;
struct mlx4_dev {TYPE_1__* persist; } ;
struct mlx4_priv {struct mlx4_dev dev; } ;
struct mlx4_fw_crdump {scalar_t__ snapshot_enable; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {struct mlx4_fw_crdump crdump; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET ; 
 int /*<<< orphan*/  DEVLINK_PARAM_GENERIC_ID_MAX_MACS ; 
 int /*<<< orphan*/  DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT ; 
 int /*<<< orphan*/  MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR ; 
 int /*<<< orphan*/  MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE ; 
 int FUNC0 (struct devlink*,int /*<<< orphan*/ ,union devlink_param_value*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC2 (struct devlink*) ; 
 scalar_t__ enable_4k_uar ; 
 scalar_t__ enable_64b_cqe_eqe ; 
 int /*<<< orphan*/  log_num_mac ; 
 scalar_t__ mlx4_internal_err_reset ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct devlink *devlink)
{
	struct mlx4_priv *priv = FUNC2(devlink);
	struct mlx4_dev *dev = &priv->dev;
	struct mlx4_fw_crdump *crdump = &dev->persist->crdump;
	union devlink_param_value saved_value;
	int err;

	err = FUNC0(devlink,
						 DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET,
						 &saved_value);
	if (!err && mlx4_internal_err_reset != saved_value.vbool) {
		mlx4_internal_err_reset = saved_value.vbool;
		/* Notify on value changed on runtime configuration mode */
		FUNC1(devlink,
					    DEVLINK_PARAM_GENERIC_ID_INT_ERR_RESET);
	}
	err = FUNC0(devlink,
						 DEVLINK_PARAM_GENERIC_ID_MAX_MACS,
						 &saved_value);
	if (!err)
		log_num_mac = FUNC3(saved_value.vu32);
	err = FUNC0(devlink,
						 MLX4_DEVLINK_PARAM_ID_ENABLE_64B_CQE_EQE,
						 &saved_value);
	if (!err)
		enable_64b_cqe_eqe = saved_value.vbool;
	err = FUNC0(devlink,
						 MLX4_DEVLINK_PARAM_ID_ENABLE_4K_UAR,
						 &saved_value);
	if (!err)
		enable_4k_uar = saved_value.vbool;
	err = FUNC0(devlink,
						 DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT,
						 &saved_value);
	if (!err && crdump->snapshot_enable != saved_value.vbool) {
		crdump->snapshot_enable = saved_value.vbool;
		FUNC1(devlink,
					    DEVLINK_PARAM_GENERIC_ID_REGION_SNAPSHOT);
	}
}