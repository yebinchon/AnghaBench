#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct net_device {int dummy; } ;
struct TYPE_7__ {int num_tc; } ;
struct TYPE_9__ {int num; TYPE_1__ params; } ;
struct mlx5e_priv {TYPE_3__ channels; struct net_device* netdev; TYPE_2__* profile; } ;
struct TYPE_8__ {int rq_groups; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_priv*) ; 
 scalar_t__ FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5e_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5e_priv*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 

void FUNC12(struct mlx5e_priv *priv)
{
	int num_txqs = priv->channels.num * priv->channels.params.num_tc;
	int num_rxqs = priv->channels.num * priv->profile->rq_groups;
	struct net_device *netdev = priv->netdev;

	FUNC4(netdev);
	FUNC10(netdev, num_txqs);
	FUNC9(netdev, num_rxqs);

	FUNC2(priv);
	FUNC0(&priv->channels);
	FUNC7(priv);
	FUNC11(priv->netdev);

	if (FUNC3(priv))
		FUNC1(priv);

	FUNC6(&priv->channels);
	FUNC5(priv, &priv->channels);

	FUNC8(priv, &priv->channels);
}