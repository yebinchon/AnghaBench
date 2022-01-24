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
 int NUM_PPORT_PHY_STATISTICAL_COUNTERS ; 
 int NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS ; 
 int /*<<< orphan*/  per_lane_error_counters ; 
 int /*<<< orphan*/  ppcnt_statistical_group ; 

__attribute__((used)) static int FUNC1(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	int num_stats;

	/* "1" for link_down_events special counter */
	num_stats = 1;

	num_stats += FUNC0(mdev, ppcnt_statistical_group) ?
		     NUM_PPORT_PHY_STATISTICAL_COUNTERS : 0;

	num_stats += FUNC0(mdev, per_lane_error_counters) ?
		     NUM_PPORT_PHY_STATISTICAL_PER_LANE_COUNTERS : 0;

	return num_stats;
}