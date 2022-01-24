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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/ * tlsdev_ops; int /*<<< orphan*/  hw_features; int /*<<< orphan*/  features; } ;
struct mlx5e_priv {int /*<<< orphan*/  mdev; struct net_device* netdev; } ;

/* Variables and functions */
 int MLX5_ACCEL_TLS_LRO ; 
 int MLX5_ACCEL_TLS_RX ; 
 int MLX5_ACCEL_TLS_TX ; 
 int /*<<< orphan*/  NETIF_F_HW_TLS_RX ; 
 int /*<<< orphan*/  NETIF_F_HW_TLS_TX ; 
 int /*<<< orphan*/  NETIF_F_LRO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5e_priv*) ; 
 int /*<<< orphan*/  mlx5e_tls_ops ; 

void FUNC4(struct mlx5e_priv *priv)
{
	struct net_device *netdev = priv->netdev;
	u32 caps;

	if (FUNC0(priv->mdev)) {
		FUNC3(priv);
		return;
	}

	if (!FUNC1(priv->mdev))
		return;

	caps = FUNC2(priv->mdev);
	if (caps & MLX5_ACCEL_TLS_TX) {
		netdev->features          |= NETIF_F_HW_TLS_TX;
		netdev->hw_features       |= NETIF_F_HW_TLS_TX;
	}

	if (caps & MLX5_ACCEL_TLS_RX) {
		netdev->features          |= NETIF_F_HW_TLS_RX;
		netdev->hw_features       |= NETIF_F_HW_TLS_RX;
	}

	if (!(caps & MLX5_ACCEL_TLS_LRO)) {
		netdev->features          &= ~NETIF_F_LRO;
		netdev->hw_features       &= ~NETIF_F_LRO;
	}

	netdev->tlsdev_ops = &mlx5e_tls_ops;
}