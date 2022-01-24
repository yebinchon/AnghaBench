#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  expires; } ;
struct mlx5_core_health {TYPE_3__ timer; int /*<<< orphan*/ * health_counter; int /*<<< orphan*/ * health; int /*<<< orphan*/  flags; int /*<<< orphan*/  fatal_error; } ;
struct TYPE_6__ {struct mlx5_core_health health; } ;
struct mlx5_core_dev {TYPE_1__* iseg; TYPE_2__ priv; } ;
struct TYPE_5__ {int /*<<< orphan*/  health_counter; int /*<<< orphan*/  health; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_DROP_NEW_HEALTH_WORK ; 
 scalar_t__ MLX5_HEALTH_POLL_INTERVAL ; 
 int /*<<< orphan*/  MLX5_SENSOR_NO_ERR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  poll_health ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct mlx5_core_dev *dev)
{
	struct mlx5_core_health *health = &dev->priv.health;

	FUNC3(&health->timer, poll_health, 0);
	health->fatal_error = MLX5_SENSOR_NO_ERR;
	FUNC1(MLX5_DROP_NEW_HEALTH_WORK, &health->flags);
	health->health = &dev->iseg->health;
	health->health_counter = &dev->iseg->health_counter;

	health->timer.expires = FUNC2(jiffies + MLX5_HEALTH_POLL_INTERVAL);
	FUNC0(&health->timer);
}