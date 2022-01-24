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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct mlx5i_priv {int /*<<< orphan*/  qkey; } ;
struct mlx5e_txqsq {int dummy; } ;
struct mlx5e_priv {struct mlx5i_priv* ppriv; struct mlx5e_txqsq** txq2sq; } ;
struct mlx5_ib_ah {int /*<<< orphan*/  av; } ;
struct ib_ah {int dummy; } ;

/* Variables and functions */
 struct mlx5e_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct mlx5e_txqsq*,struct sk_buff*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t FUNC3 (struct sk_buff*) ; 
 struct mlx5_ib_ah* FUNC4 (struct ib_ah*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, struct sk_buff *skb,
		      struct ib_ah *address, u32 dqpn)
{
	struct mlx5e_priv *epriv = FUNC0(dev);
	struct mlx5e_txqsq *sq   = epriv->txq2sq[FUNC3(skb)];
	struct mlx5_ib_ah *mah   = FUNC4(address);
	struct mlx5i_priv *ipriv = epriv->ppriv;

	return FUNC1(sq, skb, &mah->av, dqpn, ipriv->qkey, FUNC2());
}