#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdp_umem {int dummy; } ;
struct mlx5e_priv {int dummy; } ;
struct TYPE_4__ {int num_channels; int /*<<< orphan*/  xsk; scalar_t__ xdp_prog; } ;
struct mlx5e_channels {int num; int /*<<< orphan*/ * c; TYPE_1__ params; } ;
struct mlx5e_channel_param {int dummy; } ;
struct mlx5e_channel {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_channel_param*) ; 
 struct mlx5e_channel_param* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_priv*,TYPE_1__*,struct mlx5e_channel_param*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_priv*) ; 
 int FUNC7 (struct mlx5e_priv*,int,TYPE_1__*,struct mlx5e_channel_param*,struct xdp_umem*,int /*<<< orphan*/ *) ; 
 struct xdp_umem* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

int FUNC9(struct mlx5e_priv *priv,
			struct mlx5e_channels *chs)
{
	struct mlx5e_channel_param *cparam;
	int err = -ENOMEM;
	int i;

	chs->num = chs->params.num_channels;

	chs->c = FUNC0(chs->num, sizeof(struct mlx5e_channel *), GFP_KERNEL);
	cparam = FUNC3(sizeof(struct mlx5e_channel_param), GFP_KERNEL);
	if (!chs->c || !cparam)
		goto err_free;

	FUNC4(priv, &chs->params, cparam);
	for (i = 0; i < chs->num; i++) {
		struct xdp_umem *umem = NULL;

		if (chs->params.xdp_prog)
			umem = FUNC8(&chs->params, chs->params.xsk, i);

		err = FUNC7(priv, i, &chs->params, cparam, umem, &chs->c[i]);
		if (err)
			goto err_close_channels;
	}

	FUNC6(priv);
	FUNC2(cparam);
	return 0;

err_close_channels:
	for (i--; i >= 0; i--)
		FUNC5(chs->c[i]);

err_free:
	FUNC1(chs->c);
	FUNC2(cparam);
	chs->num = 0;
	return err;
}