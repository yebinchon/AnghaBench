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
struct mlx5_devcom_list {size_t idx; int /*<<< orphan*/  list; int /*<<< orphan*/ ** devs; struct mlx5_devcom_list* priv; } ;
struct mlx5_devcom {size_t idx; int /*<<< orphan*/  list; int /*<<< orphan*/ ** devs; struct mlx5_devcom* priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5_devcom_list*) ; 
 int MLX5_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_devcom_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct mlx5_devcom *devcom)
{
	struct mlx5_devcom_list *priv;
	int i;

	if (FUNC0(devcom))
		return;

	priv = devcom->priv;
	priv->devs[devcom->idx] = NULL;

	FUNC1(devcom);

	for (i = 0; i < MLX5_MAX_PORTS; i++)
		if (priv->devs[i])
			break;

	if (i != MLX5_MAX_PORTS)
		return;

	FUNC2(&priv->list);
	FUNC1(priv);
}