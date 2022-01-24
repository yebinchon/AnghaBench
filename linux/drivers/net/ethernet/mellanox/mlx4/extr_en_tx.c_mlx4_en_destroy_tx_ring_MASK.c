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
struct mlx4_en_tx_ring {int /*<<< orphan*/ * tx_info; struct mlx4_en_tx_ring* bounce_buf; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  sp_wqres; int /*<<< orphan*/  qpn; int /*<<< orphan*/  sp_qp; int /*<<< orphan*/  bf; scalar_t__ bf_alloced; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mlx4_en_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_en_tx_ring*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC8(struct mlx4_en_priv *priv,
			     struct mlx4_en_tx_ring **pring)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_tx_ring *ring = *pring;
	FUNC0(DRV, priv, "Destroying tx ring, qpn: %d\n", ring->qpn);

	if (ring->bf_alloced)
		FUNC3(mdev->dev, &ring->bf);
	FUNC7(mdev->dev, &ring->sp_qp);
	FUNC5(mdev->dev, &ring->sp_qp);
	FUNC6(priv->mdev->dev, ring->qpn, 1);
	FUNC4(mdev->dev, &ring->sp_wqres, ring->buf_size);
	FUNC1(ring->bounce_buf);
	ring->bounce_buf = NULL;
	FUNC2(ring->tx_info);
	ring->tx_info = NULL;
	FUNC1(ring);
	*pring = NULL;
}