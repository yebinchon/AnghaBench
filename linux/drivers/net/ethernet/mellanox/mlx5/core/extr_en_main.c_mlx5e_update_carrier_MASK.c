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
typedef  scalar_t__ u8 ;
struct mlx5e_priv {int /*<<< orphan*/  netdev; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_VPORT_STATE_OP_MOD_VNIC_VPORT ; 
 scalar_t__ VPORT_STATE_UP ; 
 scalar_t__ FUNC0 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct mlx5e_priv *priv)
{
	struct mlx5_core_dev *mdev = priv->mdev;
	u8 port_state;

	port_state = FUNC0(mdev,
					    MLX5_VPORT_STATE_OP_MOD_VNIC_VPORT,
					    0);

	if (port_state == VPORT_STATE_UP) {
		FUNC1(priv->netdev, "Link up\n");
		FUNC3(priv->netdev);
	} else {
		FUNC1(priv->netdev, "Link down\n");
		FUNC2(priv->netdev);
	}
}