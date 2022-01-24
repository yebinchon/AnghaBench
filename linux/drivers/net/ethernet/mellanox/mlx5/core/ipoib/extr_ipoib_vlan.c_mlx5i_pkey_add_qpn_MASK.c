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
typedef  size_t u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct qpn_to_netdev {int /*<<< orphan*/  hlist; int /*<<< orphan*/  underlay_qpn; struct net_device* netdev; } ;
struct net_device {int dummy; } ;
struct mlx5i_priv {struct mlx5i_pkey_qpn_ht* qpn_htbl; } ;
struct mlx5i_pkey_qpn_ht {int /*<<< orphan*/  ht_lock; int /*<<< orphan*/ * buckets; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MLX5I_MAX_LOG_PKEY_SUP ; 
 size_t FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qpn_to_netdev* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct mlx5i_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct net_device *netdev, u32 qpn)
{
	struct mlx5i_priv *ipriv = FUNC3(netdev);
	struct mlx5i_pkey_qpn_ht *ht = ipriv->qpn_htbl;
	u8 key = FUNC0(qpn, MLX5I_MAX_LOG_PKEY_SUP);
	struct qpn_to_netdev *new_node;

	new_node = FUNC2(sizeof(*new_node), GFP_KERNEL);
	if (!new_node)
		return -ENOMEM;

	new_node->netdev = netdev;
	new_node->underlay_qpn = qpn;
	FUNC4(&ht->ht_lock);
	FUNC1(&new_node->hlist, &ht->buckets[key]);
	FUNC5(&ht->ht_lock);

	return 0;
}