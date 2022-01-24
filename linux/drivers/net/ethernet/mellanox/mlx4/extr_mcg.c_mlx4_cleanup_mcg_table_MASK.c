#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ steering_mode; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_5__ {int /*<<< orphan*/  bitmap; } ;
struct TYPE_6__ {TYPE_2__ mcg_table; } ;

/* Variables and functions */
 scalar_t__ MLX4_STEERING_MODE_DEVICE_MANAGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (struct mlx4_dev*) ; 

void FUNC2(struct mlx4_dev *dev)
{
	if (dev->caps.steering_mode !=
	    MLX4_STEERING_MODE_DEVICE_MANAGED)
		FUNC0(&FUNC1(dev)->mcg_table.bitmap);
}