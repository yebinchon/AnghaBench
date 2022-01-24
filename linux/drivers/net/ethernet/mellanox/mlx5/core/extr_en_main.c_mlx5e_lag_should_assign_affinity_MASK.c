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
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lag_tx_port_affinity ; 
 int FUNC1 (struct mlx5_core_dev*) ; 

__attribute__((used)) static bool FUNC2(struct mlx5_core_dev *mdev)
{
	return FUNC0(mdev, lag_tx_port_affinity) && FUNC1(mdev) > 1;
}