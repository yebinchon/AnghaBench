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
 int FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lag_master ; 
 int /*<<< orphan*/  num_lag_ports ; 
 int /*<<< orphan*/  vport_group_manager ; 

__attribute__((used)) static inline int FUNC1(struct mlx5_core_dev *dev)
{
	/* LACP owner conditions:
	 * 1) Function is physical.
	 * 2) LAG is supported by FW.
	 * 3) LAG is managed by driver (currently the only option).
	 */
	return  FUNC0(dev, vport_group_manager) &&
		   (FUNC0(dev, num_lag_ports) > 1) &&
		    FUNC0(dev, lag_master);
}