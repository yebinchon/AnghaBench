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
struct rhashtable {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow {int /*<<< orphan*/  node; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; TYPE_1__ common; } ;

/* Variables and functions */
 int EEXIST ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct rhashtable* FUNC1 (struct mlx5e_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int FUNC3 (struct mlx5e_priv*,struct flow_cls_offload*,unsigned long,struct net_device*,struct mlx5e_tc_flow**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct mlx5e_tc_flow* FUNC7 (struct rhashtable*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct rhashtable*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tc_ht_params ; 
 int /*<<< orphan*/  FUNC9 (struct flow_cls_offload*) ; 

int FUNC10(struct net_device *dev, struct mlx5e_priv *priv,
			   struct flow_cls_offload *f, unsigned long flags)
{
	struct netlink_ext_ack *extack = f->common.extack;
	struct rhashtable *tc_ht = FUNC1(priv, flags);
	struct mlx5e_tc_flow *flow;
	int err = 0;

	FUNC5();
	flow = FUNC7(tc_ht, &f->cookie, tc_ht_params);
	FUNC6();
	if (flow) {
		FUNC0(extack,
				   "flow cookie already exists, ignoring");
		FUNC4(priv->netdev,
				 "flow cookie %lx already exists, ignoring\n",
				 f->cookie);
		err = -EEXIST;
		goto out;
	}

	FUNC9(f);
	err = FUNC3(priv, f, flags, dev, &flow);
	if (err)
		goto out;

	err = FUNC8(tc_ht, &flow->node, tc_ht_params);
	if (err)
		goto err_free;

	return 0;

err_free:
	FUNC2(priv, flow);
out:
	return err;
}