
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rss_map {int base_qpn; int * qps; int * state; int * indir_qp; int indir_state; } ;
struct mlx4_en_priv {int rx_ring_num; struct mlx4_en_rss_map rss_map; struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;


 int MLX4_QP_STATE_RST ;
 int kfree (int *) ;
 int mlx4_qp_free (int ,int *) ;
 int mlx4_qp_modify (int ,int *,int ,int ,int *,int ,int ,int *) ;
 int mlx4_qp_release_range (int ,int ,int) ;
 int mlx4_qp_remove (int ,int *) ;

void mlx4_en_release_rss_steer(struct mlx4_en_priv *priv)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_rss_map *rss_map = &priv->rss_map;
 int i;

 if (priv->rx_ring_num > 1) {
  mlx4_qp_modify(mdev->dev, ((void*)0), rss_map->indir_state,
          MLX4_QP_STATE_RST, ((void*)0), 0, 0,
          rss_map->indir_qp);
  mlx4_qp_remove(mdev->dev, rss_map->indir_qp);
  mlx4_qp_free(mdev->dev, rss_map->indir_qp);
  kfree(rss_map->indir_qp);
  rss_map->indir_qp = ((void*)0);
 }

 for (i = 0; i < priv->rx_ring_num; i++) {
  mlx4_qp_modify(mdev->dev, ((void*)0), rss_map->state[i],
          MLX4_QP_STATE_RST, ((void*)0), 0, 0, &rss_map->qps[i]);
  mlx4_qp_remove(mdev->dev, &rss_map->qps[i]);
  mlx4_qp_free(mdev->dev, &rss_map->qps[i]);
 }
 mlx4_qp_release_range(mdev->dev, rss_map->base_qpn, priv->rx_ring_num);
}
