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
struct net_device {int /*<<< orphan*/  hw_enc_features; int /*<<< orphan*/  hw_features; int /*<<< orphan*/  features; int /*<<< orphan*/ * xfrmdev_ops; } ;
struct mlx5e_priv {int /*<<< orphan*/  ipsec; struct net_device* netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int MLX5_ACCEL_IPSEC_CAP_ESP ; 
 int MLX5_ACCEL_IPSEC_CAP_LSO ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NETIF_F_GSO_ESP ; 
 int /*<<< orphan*/  NETIF_F_HW_ESP ; 
 int /*<<< orphan*/  NETIF_F_HW_ESP_TX_CSUM ; 
 int FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*) ; 
 int /*<<< orphan*/  mlx5e_ipsec_xfrmdev_ops ; 
 int /*<<< orphan*/  swp ; 
 int /*<<< orphan*/  swp_csum ; 
 int /*<<< orphan*/  swp_lso ; 

void FUNC4(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	struct net_device *netdev = priv->netdev;

	if (!priv->ipsec)
		return;

	if (!(FUNC1(mdev) & MLX5_ACCEL_IPSEC_CAP_ESP) ||
	    !FUNC0(mdev, swp)) {
		FUNC2(mdev, "mlx5e: ESP and SWP offload not supported\n");
		return;
	}

	FUNC3(mdev, "mlx5e: IPSec ESP acceleration enabled\n");
	netdev->xfrmdev_ops = &mlx5e_ipsec_xfrmdev_ops;
	netdev->features |= NETIF_F_HW_ESP;
	netdev->hw_enc_features |= NETIF_F_HW_ESP;

	if (!FUNC0(mdev, swp_csum)) {
		FUNC2(mdev, "mlx5e: SWP checksum not supported\n");
		return;
	}

	netdev->features |= NETIF_F_HW_ESP_TX_CSUM;
	netdev->hw_enc_features |= NETIF_F_HW_ESP_TX_CSUM;

	if (!(FUNC1(mdev) & MLX5_ACCEL_IPSEC_CAP_LSO) ||
	    !FUNC0(mdev, swp_lso)) {
		FUNC2(mdev, "mlx5e: ESP LSO not supported\n");
		return;
	}

	FUNC2(mdev, "mlx5e: ESP GSO capability turned on\n");
	netdev->features |= NETIF_F_GSO_ESP;
	netdev->hw_features |= NETIF_F_GSO_ESP;
	netdev->hw_enc_features |= NETIF_F_GSO_ESP;
}