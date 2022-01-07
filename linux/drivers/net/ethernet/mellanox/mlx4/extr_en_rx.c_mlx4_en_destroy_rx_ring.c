
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlx4_en_rx_ring {int * rx_info; int wqres; int xdp_rxq; int xdp_prog; } ;
struct mlx4_en_priv {struct mlx4_en_dev* mdev; } ;
struct mlx4_en_dev {int dev; int state_lock; } ;
struct bpf_prog {int dummy; } ;


 scalar_t__ TXBB_SIZE ;
 int bpf_prog_put (struct bpf_prog*) ;
 int kfree (struct mlx4_en_rx_ring*) ;
 int kvfree (int *) ;
 int lockdep_is_held (int *) ;
 int mlx4_free_hwq_res (int ,int *,scalar_t__) ;
 struct bpf_prog* rcu_dereference_protected (int ,int ) ;
 int xdp_rxq_info_unreg (int *) ;

void mlx4_en_destroy_rx_ring(struct mlx4_en_priv *priv,
        struct mlx4_en_rx_ring **pring,
        u32 size, u16 stride)
{
 struct mlx4_en_dev *mdev = priv->mdev;
 struct mlx4_en_rx_ring *ring = *pring;
 struct bpf_prog *old_prog;

 old_prog = rcu_dereference_protected(
     ring->xdp_prog,
     lockdep_is_held(&mdev->state_lock));
 if (old_prog)
  bpf_prog_put(old_prog);
 xdp_rxq_info_unreg(&ring->xdp_rxq);
 mlx4_free_hwq_res(mdev->dev, &ring->wqres, size * stride + TXBB_SIZE);
 kvfree(ring->rx_info);
 ring->rx_info = ((void*)0);
 kfree(ring);
 *pring = ((void*)0);
}
