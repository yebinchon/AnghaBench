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
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow_parse_attr {int /*<<< orphan*/  spec; struct net_device* filter_dev; } ;
struct mlx5e_tc_flow {int /*<<< orphan*/  priv; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; } ;
struct mlx5_nic_flow_attr {int dummy; } ;
struct flow_rule {int /*<<< orphan*/  action; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  MLX5E_TC_FLOW_FLAG_NIC ; 
 int /*<<< orphan*/  OFFLOADED ; 
 struct flow_rule* FUNC1 (struct flow_cls_offload*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_tc_flow_parse_attr*) ; 
 int FUNC4 (struct mlx5e_priv*,int,struct flow_cls_offload*,unsigned long,struct mlx5e_tc_flow_parse_attr**,struct mlx5e_tc_flow**) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int FUNC6 (struct mlx5e_priv*,struct mlx5e_tc_flow_parse_attr*,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct mlx5e_tc_flow*,int /*<<< orphan*/ *,struct flow_cls_offload*,struct net_device*) ; 
 int FUNC8 (struct mlx5e_priv*,int /*<<< orphan*/ *,struct mlx5e_tc_flow_parse_attr*,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC10(struct mlx5e_priv *priv,
		   struct flow_cls_offload *f,
		   unsigned long flow_flags,
		   struct net_device *filter_dev,
		   struct mlx5e_tc_flow **__flow)
{
	struct flow_rule *rule = FUNC1(f);
	struct netlink_ext_ack *extack = f->common.extack;
	struct mlx5e_tc_flow_parse_attr *parse_attr;
	struct mlx5e_tc_flow *flow;
	int attr_size, err;

	/* multi-chain not supported for NIC rules */
	if (!FUNC9(priv->netdev, &f->common))
		return -EOPNOTSUPP;

	flow_flags |= FUNC0(MLX5E_TC_FLOW_FLAG_NIC);
	attr_size  = sizeof(struct mlx5_nic_flow_attr);
	err = FUNC4(priv, attr_size, f, flow_flags,
			       &parse_attr, &flow);
	if (err)
		goto out;

	parse_attr->filter_dev = filter_dev;
	err = FUNC7(flow->priv, flow, &parse_attr->spec,
			       f, filter_dev);
	if (err)
		goto err_free;

	err = FUNC8(priv, &rule->action, parse_attr, flow, extack);
	if (err)
		goto err_free;

	err = FUNC6(priv, parse_attr, flow, extack);
	if (err)
		goto err_free;

	FUNC2(flow, OFFLOADED);
	FUNC3(parse_attr);
	*__flow = flow;

	return 0;

err_free:
	FUNC5(priv, flow);
	FUNC3(parse_attr);
out:
	return err;
}