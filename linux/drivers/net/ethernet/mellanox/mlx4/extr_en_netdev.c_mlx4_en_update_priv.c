
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {int dummy; } ;
struct mlx4_en_priv {int rx_ring_num; int * prof; int num_tx_rings_p_up; int * tx_cq; int * tx_ring; int * tx_ring_num; int hwtstamp_config; int * rx_cq; int * rx_ring; } ;
struct mlx4_en_port_profile {int dummy; } ;
struct mlx4_en_cq {int dummy; } ;


 int MLX4_EN_NUM_TX_TYPES ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void mlx4_en_update_priv(struct mlx4_en_priv *dst,
    struct mlx4_en_priv *src)
{
 int t;
 memcpy(dst->rx_ring, src->rx_ring,
        sizeof(struct mlx4_en_rx_ring *) * src->rx_ring_num);
 memcpy(dst->rx_cq, src->rx_cq,
        sizeof(struct mlx4_en_cq *) * src->rx_ring_num);
 memcpy(&dst->hwtstamp_config, &src->hwtstamp_config,
        sizeof(dst->hwtstamp_config));
 for (t = 0; t < MLX4_EN_NUM_TX_TYPES; t++) {
  dst->tx_ring_num[t] = src->tx_ring_num[t];
  dst->tx_ring[t] = src->tx_ring[t];
  dst->tx_cq[t] = src->tx_cq[t];
 }
 dst->num_tx_rings_p_up = src->num_tx_rings_p_up;
 dst->rx_ring_num = src->rx_ring_num;
 memcpy(dst->prof, src->prof, sizeof(struct mlx4_en_port_profile));
}
