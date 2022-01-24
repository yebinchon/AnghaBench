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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {int dummy; } ;
struct mlx5e_modify_sq_param {void* next_state; void* curr_state; } ;
struct mlx5e_channel {struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int /*<<< orphan*/  msp ;

/* Variables and functions */
 void* MLX5_SQC_STATE_ERR ; 
 void* MLX5_SQC_STATE_RDY ; 
 void* MLX5_SQC_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_modify_sq_param*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ,struct mlx5e_modify_sq_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 

int FUNC3(struct mlx5e_channel *channel, u32 sqn)
{
	struct mlx5_core_dev *mdev = channel->mdev;
	struct net_device *dev = channel->netdev;
	struct mlx5e_modify_sq_param msp = {};
	int err;

	msp.curr_state = MLX5_SQC_STATE_ERR;
	msp.next_state = MLX5_SQC_STATE_RST;

	err = FUNC1(mdev, sqn, &msp);
	if (err) {
		FUNC2(dev, "Failed to move sq 0x%x to reset\n", sqn);
		return err;
	}

	FUNC0(&msp, 0, sizeof(msp));
	msp.curr_state = MLX5_SQC_STATE_RST;
	msp.next_state = MLX5_SQC_STATE_RDY;

	err = FUNC1(mdev, sqn, &msp);
	if (err) {
		FUNC2(dev, "Failed to move sq 0x%x to ready\n", sqn);
		return err;
	}

	return 0;
}