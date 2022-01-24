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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tc_indr_block_priv_list; } ;
struct mlx5e_rep_priv {TYPE_1__ uplink_priv; } ;
struct mlx5e_rep_indr_block_priv {int /*<<< orphan*/  list; struct mlx5e_rep_priv* rpriv; struct net_device* netdev; } ;
struct flow_block_offload {scalar_t__ binder_type; int unlocked_driver_cb; int command; int /*<<< orphan*/  block; int /*<<< orphan*/ * driver_block_list; } ;
struct flow_block_cb {int /*<<< orphan*/  driver_list; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
#define  FLOW_BLOCK_BIND 129 
 scalar_t__ FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS ; 
#define  FLOW_BLOCK_UNBIND 128 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct flow_block_cb*) ; 
 int FUNC1 (struct flow_block_cb*) ; 
 int /*<<< orphan*/  FUNC2 (struct flow_block_cb*,struct flow_block_offload*) ; 
 struct flow_block_cb* FUNC3 (int /*<<< orphan*/ ,struct mlx5e_rep_indr_block_priv*,struct mlx5e_rep_indr_block_priv*,int /*<<< orphan*/ ) ; 
 struct flow_block_cb* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mlx5e_rep_indr_block_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct flow_block_cb*,struct flow_block_offload*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5e_rep_indr_block_priv*) ; 
 struct mlx5e_rep_indr_block_priv* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mlx5e_block_cb_list ; 
 struct mlx5e_rep_indr_block_priv* FUNC11 (struct mlx5e_rep_priv*,struct net_device*) ; 
 int /*<<< orphan*/  mlx5e_rep_indr_setup_block_cb ; 
 int /*<<< orphan*/  mlx5e_rep_indr_tc_block_unbind ; 

__attribute__((used)) static int
FUNC12(struct net_device *netdev,
			      struct mlx5e_rep_priv *rpriv,
			      struct flow_block_offload *f)
{
	struct mlx5e_rep_indr_block_priv *indr_priv;
	struct flow_block_cb *block_cb;

	if (f->binder_type != FLOW_BLOCK_BINDER_TYPE_CLSACT_INGRESS)
		return -EOPNOTSUPP;

	f->unlocked_driver_cb = true;
	f->driver_block_list = &mlx5e_block_cb_list;

	switch (f->command) {
	case FLOW_BLOCK_BIND:
		indr_priv = FUNC11(rpriv, netdev);
		if (indr_priv)
			return -EEXIST;

		indr_priv = FUNC7(sizeof(*indr_priv), GFP_KERNEL);
		if (!indr_priv)
			return -ENOMEM;

		indr_priv->netdev = netdev;
		indr_priv->rpriv = rpriv;
		FUNC8(&indr_priv->list,
			 &rpriv->uplink_priv.tc_indr_block_priv_list);

		block_cb = FUNC3(mlx5e_rep_indr_setup_block_cb,
					       indr_priv, indr_priv,
					       mlx5e_rep_indr_tc_block_unbind);
		if (FUNC0(block_cb)) {
			FUNC10(&indr_priv->list);
			FUNC6(indr_priv);
			return FUNC1(block_cb);
		}
		FUNC2(block_cb, f);
		FUNC9(&block_cb->driver_list, &mlx5e_block_cb_list);

		return 0;
	case FLOW_BLOCK_UNBIND:
		indr_priv = FUNC11(rpriv, netdev);
		if (!indr_priv)
			return -ENOENT;

		block_cb = FUNC4(f->block,
						mlx5e_rep_indr_setup_block_cb,
						indr_priv);
		if (!block_cb)
			return -ENOENT;

		FUNC5(block_cb, f);
		FUNC10(&block_cb->driver_list);
		return 0;
	default:
		return -EOPNOTSUPP;
	}
	return 0;
}