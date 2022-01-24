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
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;
struct mlx5e_priv {TYPE_1__ xsk; } ;
struct mlx5e_channels {int num; struct mlx5e_channel** c; } ;
struct mlx5e_channel {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_CHANNEL_STATE_XSK ; 
 int FUNC0 (struct mlx5e_priv*,struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(struct mlx5e_priv *priv, struct mlx5e_channels *chs)
{
	int err, i;

	if (!priv->xsk.refcnt)
		return 0;

	for (i = 0; i < chs->num; i++) {
		struct mlx5e_channel *c = chs->c[i];

		if (!FUNC2(MLX5E_CHANNEL_STATE_XSK, c->state))
			continue;

		err = FUNC0(priv, c);
		if (FUNC3(err))
			goto err_stop;
	}

	return 0;

err_stop:
	for (i--; i >= 0; i--) {
		if (!FUNC2(MLX5E_CHANNEL_STATE_XSK, chs->c[i]->state))
			continue;

		FUNC1(priv, i);
	}

	return err;
}