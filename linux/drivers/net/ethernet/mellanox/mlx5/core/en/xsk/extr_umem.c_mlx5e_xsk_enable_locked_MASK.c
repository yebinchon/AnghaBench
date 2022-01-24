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
typedef  size_t u16 ;
struct xdp_umem {int dummy; } ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_params {int /*<<< orphan*/  xdp_prog; } ;
struct TYPE_2__ {struct mlx5e_channel** c; struct mlx5e_params params; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; int /*<<< orphan*/  xsk; TYPE_1__ channels; int /*<<< orphan*/  state; } ;
struct mlx5e_channel {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MLX5E_STATE_OPENED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct xdp_umem*,struct mlx5e_xsk_param*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_channel*) ; 
 int FUNC4 (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,struct xdp_umem*,struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_params*,struct mlx5e_xsk_param*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct xdp_umem*,size_t) ; 
 int FUNC7 (struct mlx5e_params*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct xdp_umem*) ; 
 int FUNC9 (struct mlx5e_priv*,struct xdp_umem*) ; 
 int FUNC10 (struct mlx5e_priv*,struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_priv*,struct xdp_umem*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct mlx5e_priv *priv,
				   struct xdp_umem *umem, u16 ix)
{
	struct mlx5e_params *params = &priv->channels.params;
	struct mlx5e_xsk_param xsk;
	struct mlx5e_channel *c;
	int err;

	if (FUNC14(FUNC7(&priv->channels.params, &priv->xsk, ix)))
		return -EBUSY;

	if (FUNC14(!FUNC8(umem)))
		return -EINVAL;

	err = FUNC9(priv, umem);
	if (FUNC14(err))
		return err;

	err = FUNC6(&priv->xsk, umem, ix);
	if (FUNC14(err))
		goto err_unmap_umem;

	FUNC1(umem, &xsk);

	if (!FUNC13(MLX5E_STATE_OPENED, &priv->state)) {
		/* XSK objects will be created on open. */
		goto validate_closed;
	}

	if (!params->xdp_prog) {
		/* XSK objects will be created when an XDP program is set,
		 * and the channels are reopened.
		 */
		goto validate_closed;
	}

	c = priv->channels.c[ix];

	err = FUNC4(priv, params, &xsk, umem, c);
	if (FUNC14(err))
		goto err_remove_umem;

	FUNC0(c);

	/* Don't wait for WQEs, because the newer xdpsock sample doesn't provide
	 * any Fill Ring entries at the setup stage.
	 */

	err = FUNC10(priv, priv->channels.c[ix]);
	if (FUNC14(err))
		goto err_deactivate;

	return 0;

err_deactivate:
	FUNC3(c);
	FUNC2(c);

err_remove_umem:
	FUNC11(&priv->xsk, ix);

err_unmap_umem:
	FUNC12(priv, umem);

	return err;

validate_closed:
	/* Check the configuration in advance, rather than fail at a later stage
	 * (in mlx5e_xdp_set or on open) and end up with no channels.
	 */
	if (!FUNC5(params, &xsk, priv->mdev)) {
		err = -EINVAL;
		goto err_remove_umem;
	}

	return 0;
}