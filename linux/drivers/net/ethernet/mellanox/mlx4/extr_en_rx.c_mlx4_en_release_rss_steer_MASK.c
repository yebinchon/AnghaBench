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
struct mlx4_en_rss_map {int /*<<< orphan*/  base_qpn; int /*<<< orphan*/ * qps; int /*<<< orphan*/ * state; int /*<<< orphan*/ * indir_qp; int /*<<< orphan*/  indir_state; } ;
struct mlx4_en_priv {int rx_ring_num; struct mlx4_en_rss_map rss_map; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX4_QP_STATE_RST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct mlx4_en_priv *priv)
{
	struct mlx4_en_dev *mdev = priv->mdev;
	struct mlx4_en_rss_map *rss_map = &priv->rss_map;
	int i;

	if (priv->rx_ring_num > 1) {
		FUNC2(mdev->dev, NULL, rss_map->indir_state,
			       MLX4_QP_STATE_RST, NULL, 0, 0,
			       rss_map->indir_qp);
		FUNC4(mdev->dev, rss_map->indir_qp);
		FUNC1(mdev->dev, rss_map->indir_qp);
		FUNC0(rss_map->indir_qp);
		rss_map->indir_qp = NULL;
	}

	for (i = 0; i < priv->rx_ring_num; i++) {
		FUNC2(mdev->dev, NULL, rss_map->state[i],
			       MLX4_QP_STATE_RST, NULL, 0, 0, &rss_map->qps[i]);
		FUNC4(mdev->dev, &rss_map->qps[i]);
		FUNC1(mdev->dev, &rss_map->qps[i]);
	}
	FUNC3(mdev->dev, rss_map->base_qpn, priv->rx_ring_num);
}