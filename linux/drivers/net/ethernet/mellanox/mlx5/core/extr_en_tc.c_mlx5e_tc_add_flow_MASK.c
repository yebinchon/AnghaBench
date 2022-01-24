#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct mlx5e_tc_flow {int dummy; } ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; TYPE_2__* mdev; } ;
struct mlx5_eswitch {scalar_t__ mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  extack; } ;
struct flow_cls_offload {TYPE_3__ common; } ;
struct TYPE_4__ {struct mlx5_eswitch* eswitch; } ;
struct TYPE_5__ {TYPE_1__ priv; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ MLX5_ESWITCH_OFFLOADS ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long*) ; 
 int FUNC1 (struct mlx5e_priv*,struct flow_cls_offload*,unsigned long,struct net_device*,struct mlx5e_tc_flow**) ; 
 int FUNC2 (struct mlx5e_priv*,struct flow_cls_offload*,unsigned long,struct net_device*,struct mlx5e_tc_flow**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct mlx5e_priv *priv,
		  struct flow_cls_offload *f,
		  unsigned long flags,
		  struct net_device *filter_dev,
		  struct mlx5e_tc_flow **flow)
{
	struct mlx5_eswitch *esw = priv->mdev->priv.eswitch;
	unsigned long flow_flags;
	int err;

	FUNC0(flags, &flow_flags);

	if (!FUNC3(priv->netdev, f->common.extack))
		return -EOPNOTSUPP;

	if (esw && esw->mode == MLX5_ESWITCH_OFFLOADS)
		err = FUNC1(priv, f, flow_flags,
					 filter_dev, flow);
	else
		err = FUNC2(priv, f, flow_flags,
					 filter_dev, flow);

	return err;
}