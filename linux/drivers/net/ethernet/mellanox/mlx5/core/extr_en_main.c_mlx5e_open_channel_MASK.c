#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xdp_umem {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_xsk_param {int dummy; } ;
struct mlx5e_priv {TYPE_4__* mdev; TYPE_3__* channel_stats; struct net_device* netdev; int /*<<< orphan*/  tstamp; } ;
struct mlx5e_params {int /*<<< orphan*/  xdp_prog; int /*<<< orphan*/  num_tc; } ;
struct mlx5e_channel_param {int dummy; } ;
struct mlx5e_channel {int ix; int cpu; int xdp; int /*<<< orphan*/  napi; int /*<<< orphan*/  lag_port; int /*<<< orphan*/  irq_desc; int /*<<< orphan*/ * stats; int /*<<< orphan*/  num_tc; int /*<<< orphan*/  mkey_be; struct net_device* netdev; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * tstamp; TYPE_4__* mdev; struct mlx5e_priv* priv; } ;
struct TYPE_7__ {int /*<<< orphan*/  key; } ;
struct TYPE_8__ {TYPE_1__ mkey; } ;
struct TYPE_10__ {TYPE_2__ mlx5e_res; int /*<<< orphan*/  device; } ;
struct TYPE_9__ {int /*<<< orphan*/  ch; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_channel*) ; 
 struct mlx5e_channel* FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int) ; 
 int FUNC7 (TYPE_4__*,int,int*,unsigned int*) ; 
 int FUNC8 (struct mlx5e_channel*,struct mlx5e_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct xdp_umem*,struct mlx5e_xsk_param*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5e_channel*) ; 
 int /*<<< orphan*/  mlx5e_napi_poll ; 
 int FUNC13 (struct mlx5e_channel*,struct mlx5e_params*,struct mlx5e_channel_param*) ; 
 int FUNC14 (struct mlx5e_priv*,struct mlx5e_params*,struct mlx5e_xsk_param*,struct xdp_umem*,struct mlx5e_channel*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct mlx5e_priv *priv, int ix,
			      struct mlx5e_params *params,
			      struct mlx5e_channel_param *cparam,
			      struct xdp_umem *umem,
			      struct mlx5e_channel **cp)
{
	int cpu = FUNC2(FUNC6(priv->mdev, ix));
	struct net_device *netdev = priv->netdev;
	struct mlx5e_xsk_param xsk;
	struct mlx5e_channel *c;
	unsigned int irq;
	int err;
	int eqn;

	err = FUNC7(priv->mdev, ix, &eqn, &irq);
	if (err)
		return err;

	c = FUNC5(sizeof(*c), GFP_KERNEL, FUNC1(cpu));
	if (!c)
		return -ENOMEM;

	c->priv     = priv;
	c->mdev     = priv->mdev;
	c->tstamp   = &priv->tstamp;
	c->ix       = ix;
	c->cpu      = cpu;
	c->pdev     = priv->mdev->device;
	c->netdev   = priv->netdev;
	c->mkey_be  = FUNC0(priv->mdev->mlx5e_res.mkey.key);
	c->num_tc   = params->num_tc;
	c->xdp      = !!params->xdp_prog;
	c->stats    = &priv->channel_stats[ix].ch;
	c->irq_desc = FUNC3(irq);
	c->lag_port = FUNC11(priv->mdev, ix);

	err = FUNC8(c, params);
	if (err)
		goto err_free_channel;

	FUNC15(netdev, &c->napi, mlx5e_napi_poll, 64);

	err = FUNC13(c, params, cparam);
	if (FUNC17(err))
		goto err_napi_del;

	if (umem) {
		FUNC9(umem, &xsk);
		err = FUNC14(priv, params, &xsk, umem, c);
		if (FUNC17(err))
			goto err_close_queues;
	}

	*cp = c;

	return 0;

err_close_queues:
	FUNC10(c);

err_napi_del:
	FUNC16(&c->napi);
	FUNC12(c);

err_free_channel:
	FUNC4(c);

	return err;
}