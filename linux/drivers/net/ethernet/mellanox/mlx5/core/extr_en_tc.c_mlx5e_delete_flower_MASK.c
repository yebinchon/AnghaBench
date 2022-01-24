#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rhashtable {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_tc_flow {int /*<<< orphan*/  node; } ;
struct mlx5e_priv {int dummy; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  DELETED ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct mlx5e_tc_flow*,int /*<<< orphan*/ ) ; 
 struct rhashtable* FUNC1 (struct mlx5e_priv*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct mlx5e_tc_flow* FUNC5 (struct rhashtable*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rhashtable*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_tc_flow*,unsigned long) ; 
 int /*<<< orphan*/  tc_ht_params ; 
 int /*<<< orphan*/  FUNC8 (struct flow_cls_offload*) ; 

int FUNC9(struct net_device *dev, struct mlx5e_priv *priv,
			struct flow_cls_offload *f, unsigned long flags)
{
	struct rhashtable *tc_ht = FUNC1(priv, flags);
	struct mlx5e_tc_flow *flow;
	int err;

	FUNC3();
	flow = FUNC5(tc_ht, &f->cookie, tc_ht_params);
	if (!flow || !FUNC7(flow, flags)) {
		err = -EINVAL;
		goto errout;
	}

	/* Only delete the flow if it doesn't have MLX5E_TC_FLOW_DELETED flag
	 * set.
	 */
	if (FUNC0(flow, DELETED)) {
		err = -EINVAL;
		goto errout;
	}
	FUNC6(tc_ht, &flow->node, tc_ht_params);
	FUNC4();

	FUNC8(f);
	FUNC2(priv, flow);

	return 0;

errout:
	FUNC4();
	return err;
}