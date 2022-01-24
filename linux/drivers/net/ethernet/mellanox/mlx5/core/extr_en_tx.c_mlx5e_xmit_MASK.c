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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5e_txqsq {int dummy; } ;
struct mlx5e_tx_wqe {int dummy; } ;
struct mlx5e_priv {struct mlx5e_txqsq** txq2sq; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 struct sk_buff* FUNC0 (struct sk_buff*,struct mlx5e_txqsq*,struct net_device*,struct mlx5e_tx_wqe**,int /*<<< orphan*/ *) ; 
 struct mlx5e_tx_wqe* FUNC1 (struct mlx5e_txqsq*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5e_txqsq*,struct sk_buff*,struct mlx5e_tx_wqe*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (int) ; 

netdev_tx_t FUNC7(struct sk_buff *skb, struct net_device *dev)
{
	struct mlx5e_priv *priv = FUNC3(dev);
	struct mlx5e_tx_wqe *wqe;
	struct mlx5e_txqsq *sq;
	u16 pi;

	sq = priv->txq2sq[FUNC5(skb)];
	wqe = FUNC1(sq, sizeof(*wqe), &pi);

	/* might send skbs and update wqe and pi */
	skb = FUNC0(skb, sq, dev, &wqe, &pi);
	if (FUNC6(!skb))
		return NETDEV_TX_OK;

	return FUNC2(sq, skb, wqe, pi, FUNC4());
}