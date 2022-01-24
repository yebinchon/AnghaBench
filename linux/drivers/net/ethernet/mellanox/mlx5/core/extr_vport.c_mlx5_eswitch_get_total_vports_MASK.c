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
typedef  scalar_t__ u16 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_core_dev const*) ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev const*) ; 

u16 FUNC2(const struct mlx5_core_dev *dev)
{
	return FUNC0(dev) + FUNC1(dev);
}