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
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int NUM_PPORT_PER_TC_PRIO_COUNTERS ; 
 int NUM_PPORT_PRIO ; 
 int /*<<< orphan*/  sbcam_reg ; 

__attribute__((used)) static int FUNC1(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;

	if (!FUNC0(mdev, sbcam_reg))
		return 0;

	return NUM_PPORT_PER_TC_PRIO_COUNTERS * NUM_PPORT_PRIO;
}