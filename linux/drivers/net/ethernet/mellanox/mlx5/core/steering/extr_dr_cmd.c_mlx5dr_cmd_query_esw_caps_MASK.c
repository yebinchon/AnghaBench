#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mlx5dr_esw_caps {int /*<<< orphan*/  sw_owner; void* uplink_icm_address_tx; void* uplink_icm_address_rx; void* drop_icm_address_tx; void* drop_icm_address_rx; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sw_owner ; 
 int /*<<< orphan*/  sw_steering_fdb_action_drop_icm_address_rx ; 
 int /*<<< orphan*/  sw_steering_fdb_action_drop_icm_address_tx ; 
 int /*<<< orphan*/  sw_steering_uplink_icm_address_rx ; 
 int /*<<< orphan*/  sw_steering_uplink_icm_address_tx ; 

int FUNC2(struct mlx5_core_dev *mdev,
			      struct mlx5dr_esw_caps *caps)
{
	caps->drop_icm_address_rx =
		FUNC0(mdev,
					 sw_steering_fdb_action_drop_icm_address_rx);
	caps->drop_icm_address_tx =
		FUNC0(mdev,
					 sw_steering_fdb_action_drop_icm_address_tx);
	caps->uplink_icm_address_rx =
		FUNC0(mdev,
					 sw_steering_uplink_icm_address_rx);
	caps->uplink_icm_address_tx =
		FUNC0(mdev,
					 sw_steering_uplink_icm_address_tx);
	caps->sw_owner =
		FUNC1(mdev,
					   sw_owner);

	return 0;
}