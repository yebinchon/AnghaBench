#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct xdp_umem {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  xdp_prog; } ;
struct TYPE_3__ {struct mlx5e_channel** c; TYPE_2__ params; } ;
struct mlx5e_priv {int /*<<< orphan*/  xsk; TYPE_1__ channels; int /*<<< orphan*/  state; } ;
struct mlx5e_channel {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_channel*) ; 
 struct xdp_umem* FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct mlx5e_priv *priv, u16 ix)
{
	struct xdp_umem *umem = FUNC2(&priv->channels.params,
						   &priv->xsk, ix);
	struct mlx5e_channel *c;

	if (FUNC7(!umem))
		return -EINVAL;

	if (!FUNC6(MLX5E_STATE_OPENED, &priv->state))
		goto remove_umem;

	/* XSK RQ and SQ are only created if XDP program is set. */
	if (!priv->channels.params.xdp_prog)
		goto remove_umem;

	c = priv->channels.c[ix];
	FUNC3(priv, ix);
	FUNC1(c);
	FUNC0(c);

remove_umem:
	FUNC4(&priv->xsk, ix);
	FUNC5(priv, umem);

	return 0;
}