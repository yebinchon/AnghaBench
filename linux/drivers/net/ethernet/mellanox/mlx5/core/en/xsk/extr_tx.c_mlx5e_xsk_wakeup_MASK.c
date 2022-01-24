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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t u16 ;
struct net_device {int dummy; } ;
struct mlx5e_params {int dummy; } ;
struct TYPE_3__ {struct mlx5e_channel** c; struct mlx5e_params params; } ;
struct mlx5e_priv {TYPE_1__ channels; } ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct mlx5e_channel {int /*<<< orphan*/  xskicosq_lock; TYPE_2__ xskicosq; int /*<<< orphan*/  napi; int /*<<< orphan*/ * state; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENETDOWN ; 
 int ENXIO ; 
 int /*<<< orphan*/  MLX5E_CHANNEL_STATE_XSK ; 
 int /*<<< orphan*/  MLX5E_RQ_GROUP_XSK ; 
 int /*<<< orphan*/  MLX5E_SQ_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5e_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct mlx5e_priv* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

int FUNC9(struct net_device *dev, u32 qid, u32 flags)
{
	struct mlx5e_priv *priv = FUNC4(dev);
	struct mlx5e_params *params = &priv->channels.params;
	struct mlx5e_channel *c;
	u16 ix;

	if (FUNC8(!FUNC2(priv)))
		return -ENETDOWN;

	if (FUNC8(!FUNC0(params, qid, MLX5E_RQ_GROUP_XSK, &ix)))
		return -EINVAL;

	c = priv->channels.c[ix];

	if (FUNC8(!FUNC7(MLX5E_CHANNEL_STATE_XSK, c->state)))
		return -ENXIO;

	if (!FUNC3(&c->napi)) {
		/* To avoid WQE overrun, don't post a NOP if XSKICOSQ is not
		 * active and not polled by NAPI. Return 0, because the upcoming
		 * activate will trigger the IRQ for us.
		 */
		if (FUNC8(!FUNC7(MLX5E_SQ_STATE_ENABLED, &c->xskicosq.state)))
			return 0;

		FUNC5(&c->xskicosq_lock);
		FUNC1(&c->xskicosq);
		FUNC6(&c->xskicosq_lock);
	}

	return 0;
}