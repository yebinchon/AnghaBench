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
struct TYPE_2__ {int /*<<< orphan*/  nb; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_MODE_POLLING ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,int /*<<< orphan*/ *) ; 

void FUNC2(struct mlx5_core_dev *dev)
{
	FUNC0(dev, CMD_MODE_POLLING);
	FUNC1(dev, &dev->cmd.nb);
}