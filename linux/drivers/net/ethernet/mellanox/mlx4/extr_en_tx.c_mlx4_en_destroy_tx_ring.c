
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_tx_ring {int * tx_info; struct mlx4_en_tx_ring* bounce_buf; int buf_size; int sp_wqres; int qpn; int sp_qp; int bf; scalar_t__ bf_alloced; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; } ;


 int DRV ;
 int en_dbg (int ,struct mlx4_en_priv*,char*,int ) ;
 int kfree (struct mlx4_en_tx_ring*) ;
 int kvfree (int *) ;
 int mlx4_bf_free (int ,int *) ;
 int mlx4_free_hwq_res (int ,int *,int ) ;
 int mlx4_qp_free (int ,int *) ;
 int mlx4_qp_release_range (int ,int ,int) ;
 int mlx4_qp_remove (int ,int *) ;

void mlx4_en_destroy_tx_ring(struct mlx4_en_priv *priv,
        struct mlx4_en_tx_ring **pring)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_tx_ring *ring = *pring;
 en_dbg(DRV, priv, "Destroying tx ring, qpn: %d\n", ring->qpn);

 if (ring->bf_alloced)
  mlx4_bf_free(mdev->dev, &ring->bf);
 mlx4_qp_remove(mdev->dev, &ring->sp_qp);
 mlx4_qp_free(mdev->dev, &ring->sp_qp);
 mlx4_qp_release_range(priv->mdev->dev, ring->qpn, 1);
 mlx4_free_hwq_res(mdev->dev, &ring->sp_wqres, ring->buf_size);
 kfree(ring->bounce_buf);
 ring->bounce_buf = ((void*)0);
 kvfree(ring->tx_info);
 ring->tx_info = ((void*)0);
 kfree(ring);
 *pring = ((void*)0);
}
