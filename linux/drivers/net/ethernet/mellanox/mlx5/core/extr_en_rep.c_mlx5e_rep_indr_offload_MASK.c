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
struct mlx5e_rep_indr_block_priv {TYPE_1__* rpriv; } ;
struct mlx5e_priv {int dummy; } ;
struct flow_cls_offload {int command; } ;
struct TYPE_2__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  EGRESS ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  ESW_OFFLOAD ; 
#define  FLOW_CLS_DESTROY 130 
#define  FLOW_CLS_REPLACE 129 
#define  FLOW_CLS_STATS 128 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*,struct mlx5e_priv*,struct flow_cls_offload*,unsigned long) ; 
 int FUNC2 (struct net_device*,struct mlx5e_priv*,struct flow_cls_offload*,unsigned long) ; 
 int FUNC3 (struct net_device*,struct mlx5e_priv*,struct flow_cls_offload*,unsigned long) ; 
 struct mlx5e_priv* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct net_device *netdev,
		       struct flow_cls_offload *flower,
		       struct mlx5e_rep_indr_block_priv *indr_priv)
{
	unsigned long flags = FUNC0(EGRESS) | FUNC0(ESW_OFFLOAD);
	struct mlx5e_priv *priv = FUNC4(indr_priv->rpriv->netdev);
	int err = 0;

	switch (flower->command) {
	case FLOW_CLS_REPLACE:
		err = FUNC1(netdev, priv, flower, flags);
		break;
	case FLOW_CLS_DESTROY:
		err = FUNC2(netdev, priv, flower, flags);
		break;
	case FLOW_CLS_STATS:
		err = FUNC3(netdev, priv, flower, flags);
		break;
	default:
		err = -EOPNOTSUPP;
	}

	return err;
}