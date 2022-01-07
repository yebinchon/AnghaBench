
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_tx_ring {int dummy; } ;
struct mlx4_en_rx_desc {int dummy; } ;
struct mlx4_en_priv {void** tx_cq; void** tx_ring; int * tx_ring_num; int stride; struct mlx4_en_port_profile* prof; int dev; int port; int mdev; int flags; int rx_ring_num; int num_tx_rings_p_up; int hwtstamp_config; } ;
struct mlx4_en_port_profile {int * tx_ring_num; int flags; int rx_ring_num; int num_tx_rings_p_up; int hwtstamp_config; } ;
struct mlx4_en_cq {int dummy; } ;


 int DS_SIZE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_TX_RINGS ;
 int MLX4_EN_MAX_RX_FRAGS ;
 int MLX4_EN_NUM_TX_TYPES ;
 void* kcalloc (int ,int,int ) ;
 int kfree (void*) ;
 int memcpy (int *,int *,int) ;
 int roundup_pow_of_two (int) ;

__attribute__((used)) static int mlx4_en_copy_priv(struct mlx4_en_priv *dst,
        struct mlx4_en_priv *src,
        struct mlx4_en_port_profile *prof)
{
 int t;

 memcpy(&dst->hwtstamp_config, &prof->hwtstamp_config,
        sizeof(dst->hwtstamp_config));
 dst->num_tx_rings_p_up = prof->num_tx_rings_p_up;
 dst->rx_ring_num = prof->rx_ring_num;
 dst->flags = prof->flags;
 dst->mdev = src->mdev;
 dst->port = src->port;
 dst->dev = src->dev;
 dst->prof = prof;
 dst->stride = roundup_pow_of_two(sizeof(struct mlx4_en_rx_desc) +
      DS_SIZE * MLX4_EN_MAX_RX_FRAGS);

 for (t = 0; t < MLX4_EN_NUM_TX_TYPES; t++) {
  dst->tx_ring_num[t] = prof->tx_ring_num[t];
  if (!dst->tx_ring_num[t])
   continue;

  dst->tx_ring[t] = kcalloc(MAX_TX_RINGS,
       sizeof(struct mlx4_en_tx_ring *),
       GFP_KERNEL);
  if (!dst->tx_ring[t])
   goto err_free_tx;

  dst->tx_cq[t] = kcalloc(MAX_TX_RINGS,
     sizeof(struct mlx4_en_cq *),
     GFP_KERNEL);
  if (!dst->tx_cq[t]) {
   kfree(dst->tx_ring[t]);
   goto err_free_tx;
  }
 }

 return 0;

err_free_tx:
 while (t--) {
  kfree(dst->tx_ring[t]);
  kfree(dst->tx_cq[t]);
 }
 return -ENOMEM;
}
