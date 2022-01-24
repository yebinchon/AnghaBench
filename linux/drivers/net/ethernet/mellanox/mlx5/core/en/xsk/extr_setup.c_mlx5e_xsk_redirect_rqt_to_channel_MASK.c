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
struct mlx5e_priv {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  rqn; } ;
struct mlx5e_channel {TYPE_1__ xskrq; int /*<<< orphan*/  ix; } ;

/* Variables and functions */
 int FUNC0 (struct mlx5e_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct mlx5e_priv *priv, struct mlx5e_channel *c)
{
	return FUNC0(priv, c->ix, c->xskrq.rqn);
}