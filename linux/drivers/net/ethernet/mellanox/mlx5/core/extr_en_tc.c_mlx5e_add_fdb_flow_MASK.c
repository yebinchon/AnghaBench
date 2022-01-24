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
struct net_device {int dummy; } ;
struct mlx5e_tc_flow {int dummy; } ;
struct mlx5e_rep_priv {struct mlx5_eswitch_rep* rep; } ;
struct mlx5e_priv {struct mlx5_core_dev* mdev; struct mlx5e_rep_priv* ppriv; } ;
struct mlx5_eswitch_rep {int dummy; } ;
struct mlx5_core_dev {int dummy; } ;
struct flow_cls_offload {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlx5e_tc_flow*) ; 
 int FUNC1 (struct mlx5e_tc_flow*) ; 
 struct mlx5e_tc_flow* FUNC2 (struct mlx5e_priv*,struct flow_cls_offload*,unsigned long,struct net_device*,struct mlx5_eswitch_rep*,struct mlx5_core_dev*) ; 
 scalar_t__ FUNC3 (struct mlx5e_tc_flow*) ; 
 int FUNC4 (struct flow_cls_offload*,struct mlx5e_tc_flow*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,struct mlx5e_tc_flow*) ; 

__attribute__((used)) static int
FUNC6(struct mlx5e_priv *priv,
		   struct flow_cls_offload *f,
		   unsigned long flow_flags,
		   struct net_device *filter_dev,
		   struct mlx5e_tc_flow **__flow)
{
	struct mlx5e_rep_priv *rpriv = priv->ppriv;
	struct mlx5_eswitch_rep *in_rep = rpriv->rep;
	struct mlx5_core_dev *in_mdev = priv->mdev;
	struct mlx5e_tc_flow *flow;
	int err;

	flow = FUNC2(priv, f, flow_flags, filter_dev, in_rep,
				    in_mdev);
	if (FUNC0(flow))
		return FUNC1(flow);

	if (FUNC3(flow)) {
		err = FUNC4(f, flow, flow_flags);
		if (err) {
			FUNC5(priv, flow);
			goto out;
		}
	}

	*__flow = flow;

	return 0;

out:
	return err;
}