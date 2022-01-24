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
struct qpn_to_netdev {int /*<<< orphan*/  hlist; } ;
struct net_device {int dummy; } ;
struct mlx5i_priv {struct mlx5i_pkey_qpn_ht* qpn_htbl; } ;
struct mlx5i_pkey_qpn_ht {int /*<<< orphan*/  ht_lock; int /*<<< orphan*/  buckets; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct mlx5i_priv* ppriv; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qpn_to_netdev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct mlx5e_priv* FUNC3 (struct net_device*) ; 
 struct qpn_to_netdev* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct net_device *netdev, u32 qpn)
{
	struct mlx5e_priv *epriv = FUNC3(netdev);
	struct mlx5i_priv *ipriv = epriv->ppriv;
	struct mlx5i_pkey_qpn_ht *ht = ipriv->qpn_htbl;
	struct qpn_to_netdev *node;

	node = FUNC4(ht->buckets, qpn);
	if (!node) {
		FUNC2(epriv->mdev, "QPN to netdev delete from HT failed\n");
		return -EINVAL;
	}

	FUNC5(&ht->ht_lock);
	FUNC0(&node->hlist);
	FUNC6(&ht->ht_lock);
	FUNC1(node);

	return 0;
}