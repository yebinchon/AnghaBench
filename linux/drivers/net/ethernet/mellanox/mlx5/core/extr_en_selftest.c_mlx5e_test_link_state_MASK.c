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
struct mlx5e_priv {int /*<<< orphan*/  mdev; int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5_VPORT_STATE_OP_MOD_VNIC_VPORT ; 
 scalar_t__ VPORT_STATE_UP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mlx5e_priv *priv)
{
	u8 port_state;

	if (!FUNC1(priv->netdev))
		return 1;

	port_state = FUNC0(priv->mdev, MLX5_VPORT_STATE_OP_MOD_VNIC_VPORT, 0);
	return port_state == VPORT_STATE_UP ? 0 : 1;
}