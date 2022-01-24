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
struct net_device {int num_rx_queues; int /*<<< orphan*/  rx_cpu_rmap; } ;
struct mlx5e_profile {int /*<<< orphan*/  rq_groups; } ;
struct mlx5e_priv {int max_nch; int max_opened_tc; int /*<<< orphan*/  wq; int /*<<< orphan*/  update_stats_work; int /*<<< orphan*/  tx_timeout_work; int /*<<< orphan*/  set_rx_mode_work; int /*<<< orphan*/  update_carrier_work; int /*<<< orphan*/  state_lock; int /*<<< orphan*/  msglevel; void* ppriv; struct mlx5e_profile const* profile; struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLX5E_MSG_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  mlx5e_set_rx_mode_work ; 
 int /*<<< orphan*/  mlx5e_tx_timeout_work ; 
 int /*<<< orphan*/  mlx5e_update_carrier_work ; 
 int /*<<< orphan*/  mlx5e_update_stats_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  u8 ; 

int FUNC6(struct net_device *netdev,
		      struct mlx5e_priv *priv,
		      struct mlx5_core_dev *mdev,
		      const struct mlx5e_profile *profile,
		      void *ppriv)
{
	/* priv init */
	priv->mdev        = mdev;
	priv->netdev      = netdev;
	priv->profile     = profile;
	priv->ppriv       = ppriv;
	priv->msglevel    = MLX5E_MSG_LEVEL;
	priv->max_nch     = netdev->num_rx_queues / FUNC2(u8, profile->rq_groups, 1);
	priv->max_opened_tc = 1;

	FUNC4(&priv->state_lock);
	FUNC0(&priv->update_carrier_work, mlx5e_update_carrier_work);
	FUNC0(&priv->set_rx_mode_work, mlx5e_set_rx_mode_work);
	FUNC0(&priv->tx_timeout_work, mlx5e_tx_timeout_work);
	FUNC0(&priv->update_stats_work, mlx5e_update_stats_work);

	priv->wq = FUNC1("mlx5e");
	if (!priv->wq)
		return -ENOMEM;

	/* netdev init */
	FUNC5(netdev);

#ifdef CONFIG_MLX5_EN_ARFS
	netdev->rx_cpu_rmap =  mlx5_eq_table_get_rmap(mdev);
#endif

	return 0;
}