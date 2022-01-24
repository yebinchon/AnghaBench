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
struct mlx5e_tc_flow {int /*<<< orphan*/  init_done; int /*<<< orphan*/  priv; int /*<<< orphan*/  esw_attr; } ;
struct mlx5e_priv {int dummy; } ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_esw_flow_attr {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct flow_rule {int /*<<< orphan*/  action; } ;
struct TYPE_2__ {struct netlink_ext_ack* extack; } ;
struct flow_cls_offload {TYPE_1__ common; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int ENETUNREACH ; 
 struct mlx5e_tc_flow* FUNC1 (int) ; 
 int /*<<< orphan*/  MLX5E_TC_FLOW_FLAG_ESWITCH ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct flow_rule* FUNC4 (struct flow_cls_offload*) ; 
 scalar_t__ FUNC5 (struct mlx5_core_dev*) ; 
 int FUNC6 (struct mlx5e_priv*,int,struct flow_cls_offload*,unsigned long,struct mlx5e_tc_flow_parse_attr**,struct mlx5e_tc_flow**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct mlx5e_priv*,struct mlx5e_tc_flow_parse_attr*,struct flow_cls_offload*,struct mlx5_eswitch_rep*,struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int FUNC9 (struct mlx5e_priv*,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct mlx5e_tc_flow*,int /*<<< orphan*/ *,struct flow_cls_offload*,struct net_device*) ; 
 int FUNC11 (struct mlx5e_priv*,int /*<<< orphan*/ *,struct mlx5e_tc_flow*,struct netlink_ext_ack*) ; 

__attribute__((used)) static struct mlx5e_tc_flow *
FUNC12(struct mlx5e_priv *priv,
		     struct flow_cls_offload *f,
		     unsigned long flow_flags,
		     struct net_device *filter_dev,
		     struct mlx5_eswitch_rep *in_rep,
		     struct mlx5_core_dev *in_mdev)
{
	struct flow_rule *rule = FUNC4(f);
	struct netlink_ext_ack *extack = f->common.extack;
	struct mlx5e_tc_flow_parse_attr *parse_attr;
	struct mlx5e_tc_flow *flow;
	int attr_size, err;

	flow_flags |= FUNC0(MLX5E_TC_FLOW_FLAG_ESWITCH);
	attr_size  = sizeof(struct mlx5_esw_flow_attr);
	err = FUNC6(priv, attr_size, f, flow_flags,
			       &parse_attr, &flow);
	if (err)
		goto out;

	parse_attr->filter_dev = filter_dev;
	FUNC7(flow->esw_attr,
				 priv, parse_attr,
				 f, in_rep, in_mdev);

	err = FUNC10(flow->priv, flow, &parse_attr->spec,
			       f, filter_dev);
	if (err)
		goto err_free;

	err = FUNC11(priv, &rule->action, flow, extack);
	if (err)
		goto err_free;

	err = FUNC9(priv, flow, extack);
	FUNC3(&flow->init_done);
	if (err) {
		if (!(err == -ENETUNREACH && FUNC5(in_mdev)))
			goto err_free;

		FUNC2(flow);
	}

	return flow;

err_free:
	FUNC8(priv, flow);
out:
	return FUNC1(err);
}