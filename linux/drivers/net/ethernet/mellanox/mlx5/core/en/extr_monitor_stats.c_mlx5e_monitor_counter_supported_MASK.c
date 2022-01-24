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
struct mlx5e_priv {struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ NUM_REQ_PPCNT_COUNTER_S1 ; 
 scalar_t__ NUM_REQ_Q_COUNTERS_S1 ; 
 int /*<<< orphan*/  max_num_of_monitor_counters ; 
 int /*<<< orphan*/  num_ppcnt_monitor_counters ; 
 int /*<<< orphan*/  num_q_monitor_counters ; 
 int /*<<< orphan*/  ppcnt ; 

int FUNC2(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;

	if (!FUNC0(mdev, max_num_of_monitor_counters))
		return false;
	if (FUNC1(mdev, ppcnt) &&
	    FUNC0(mdev, num_ppcnt_monitor_counters) <
	    NUM_REQ_PPCNT_COUNTER_S1)
		return false;
	if (FUNC0(mdev, num_q_monitor_counters) <
	    NUM_REQ_Q_COUNTERS_S1)
		return false;
	return true;
}