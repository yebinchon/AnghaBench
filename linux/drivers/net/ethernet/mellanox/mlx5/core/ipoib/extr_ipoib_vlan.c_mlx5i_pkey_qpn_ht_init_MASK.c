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
struct mlx5i_priv {struct mlx5i_pkey_qpn_ht* qpn_htbl; } ;
struct mlx5i_pkey_qpn_ht {int /*<<< orphan*/  ht_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct mlx5i_pkey_qpn_ht* FUNC0 (int,int /*<<< orphan*/ ) ; 
 struct mlx5i_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct net_device *netdev)
{
	struct mlx5i_priv *ipriv = FUNC1(netdev);
	struct mlx5i_pkey_qpn_ht *qpn_htbl;

	qpn_htbl = FUNC0(sizeof(*qpn_htbl), GFP_KERNEL);
	if (!qpn_htbl)
		return -ENOMEM;

	ipriv->qpn_htbl = qpn_htbl;
	FUNC2(&qpn_htbl->ht_lock);

	return 0;
}