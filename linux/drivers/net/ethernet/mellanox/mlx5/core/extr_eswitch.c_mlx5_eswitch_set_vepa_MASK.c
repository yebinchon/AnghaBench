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
typedef  int /*<<< orphan*/  u8 ;
struct mlx5_eswitch {scalar_t__ mode; int /*<<< orphan*/  state_lock; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_eswitch*) ; 
 scalar_t__ MLX5_ESWITCH_LEGACY ; 
 int FUNC1 (struct mlx5_eswitch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct mlx5_eswitch *esw, u8 setting)
{
	int err = 0;

	if (!esw)
		return -EOPNOTSUPP;

	if (!FUNC0(esw))
		return -EPERM;

	FUNC2(&esw->state_lock);
	if (esw->mode != MLX5_ESWITCH_LEGACY) {
		err = -EOPNOTSUPP;
		goto out;
	}

	err = FUNC1(esw, setting);

out:
	FUNC3(&esw->state_lock);
	return err;
}