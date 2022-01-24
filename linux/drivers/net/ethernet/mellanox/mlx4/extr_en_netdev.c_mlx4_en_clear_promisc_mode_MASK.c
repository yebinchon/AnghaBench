#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mlx4_en_priv {int flags; int /*<<< orphan*/  base_qpn; int /*<<< orphan*/  port; } ;
struct mlx4_en_dev {TYPE_2__* dev; } ;
struct TYPE_6__ {int steering_mode; } ;
struct TYPE_7__ {TYPE_1__ caps; } ;

/* Variables and functions */
 int MLX4_EN_FLAG_MC_PROMISC ; 
 int MLX4_EN_FLAG_PROMISC ; 
 int /*<<< orphan*/  MLX4_FS_ALL_DEFAULT ; 
#define  MLX4_STEERING_MODE_A0 130 
#define  MLX4_STEERING_MODE_B0 129 
#define  MLX4_STEERING_MODE_DEVICE_MANAGED 128 
 int /*<<< orphan*/  FUNC0 (struct mlx4_en_priv*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_priv*,char*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mlx4_en_priv*) ; 

__attribute__((used)) static void FUNC7(struct mlx4_en_priv *priv,
				       struct mlx4_en_dev *mdev)
{
	int err = 0;

	if (FUNC6(priv))
		FUNC1(priv, "Leaving promiscuous mode\n");
	priv->flags &= ~MLX4_EN_FLAG_PROMISC;

	/* Disable promiscouos mode */
	switch (mdev->dev->caps.steering_mode) {
	case MLX4_STEERING_MODE_DEVICE_MANAGED:
		err = FUNC3(mdev->dev,
						     priv->port,
						     MLX4_FS_ALL_DEFAULT);
		if (err)
			FUNC0(priv, "Failed disabling promiscuous mode\n");
		priv->flags &= ~MLX4_EN_FLAG_MC_PROMISC;
		break;

	case MLX4_STEERING_MODE_B0:
		err = FUNC5(mdev->dev,
						  priv->base_qpn,
						  priv->port);
		if (err)
			FUNC0(priv, "Failed disabling unicast promiscuous mode\n");
		/* Disable Multicast promisc */
		if (priv->flags & MLX4_EN_FLAG_MC_PROMISC) {
			err = FUNC4(mdev->dev,
							    priv->base_qpn,
							    priv->port);
			if (err)
				FUNC0(priv, "Failed disabling multicast promiscuous mode\n");
			priv->flags &= ~MLX4_EN_FLAG_MC_PROMISC;
		}
		break;

	case MLX4_STEERING_MODE_A0:
		err = FUNC2(mdev->dev,
					     priv->port,
					     priv->base_qpn, 0);
		if (err)
			FUNC0(priv, "Failed disabling promiscuous mode\n");
		break;
	}
}