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
struct mlx4_en_tx_ring {int /*<<< orphan*/  sp_qp; int /*<<< orphan*/  sp_qp_state; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_QP_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC1(struct mlx4_en_priv *priv,
				struct mlx4_en_tx_ring *ring)
{
	struct mlx4_en_dev *mdev = priv->mdev;

	FUNC0(mdev->dev, NULL, ring->sp_qp_state,
		       MLX4_QP_STATE_RST, NULL, 0, 0, &ring->sp_qp);
}