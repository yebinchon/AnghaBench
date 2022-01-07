
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlx4_en_priv {int* tx_ring_num; int rx_ring_num; scalar_t__** tx_cq; scalar_t__** tx_ring; scalar_t__* rx_cq; int stride; scalar_t__* rx_ring; int port; TYPE_2__* mdev; TYPE_1__* dev; struct mlx4_en_port_profile* prof; } ;
struct mlx4_en_port_profile {int rx_ring_size; int tx_ring_size; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int rx_cpu_rmap; } ;


 int ENOMEM ;
 int MLX4_EN_NUM_TX_TYPES ;
 int RX ;
 int TXBB_SIZE ;
 int cpu_to_node (int) ;
 int en_err (struct mlx4_en_priv*,char*) ;
 scalar_t__ mlx4_en_create_cq (struct mlx4_en_priv*,scalar_t__*,int ,int,int,int) ;
 scalar_t__ mlx4_en_create_rx_ring (struct mlx4_en_priv*,scalar_t__*,int ,int ,int,int) ;
 scalar_t__ mlx4_en_create_tx_ring (struct mlx4_en_priv*,scalar_t__*,int ,int ,int,int) ;
 int mlx4_en_destroy_cq (struct mlx4_en_priv*,scalar_t__*) ;
 int mlx4_en_destroy_rx_ring (struct mlx4_en_priv*,scalar_t__*,int ,int ) ;
 int mlx4_en_destroy_tx_ring (struct mlx4_en_priv*,scalar_t__*) ;
 int mlx4_get_cpu_rmap (int ,int ) ;
 int num_online_cpus () ;

__attribute__((used)) static int mlx4_en_alloc_resources(struct mlx4_en_priv *priv)
{
 struct mlx4_en_port_profile *prof = priv->prof;
 int i, t;
 int node;


 for (t = 0; t < MLX4_EN_NUM_TX_TYPES; t++) {
  for (i = 0; i < priv->tx_ring_num[t]; i++) {
   node = cpu_to_node(i % num_online_cpus());
   if (mlx4_en_create_cq(priv, &priv->tx_cq[t][i],
           prof->tx_ring_size, i, t, node))
    goto err;

   if (mlx4_en_create_tx_ring(priv, &priv->tx_ring[t][i],
         prof->tx_ring_size,
         TXBB_SIZE, node, i))
    goto err;
  }
 }


 for (i = 0; i < priv->rx_ring_num; i++) {
  node = cpu_to_node(i % num_online_cpus());
  if (mlx4_en_create_cq(priv, &priv->rx_cq[i],
          prof->rx_ring_size, i, RX, node))
   goto err;

  if (mlx4_en_create_rx_ring(priv, &priv->rx_ring[i],
        prof->rx_ring_size, priv->stride,
        node, i))
   goto err;

 }





 return 0;

err:
 en_err(priv, "Failed to allocate NIC resources\n");
 for (i = 0; i < priv->rx_ring_num; i++) {
  if (priv->rx_ring[i])
   mlx4_en_destroy_rx_ring(priv, &priv->rx_ring[i],
      prof->rx_ring_size,
      priv->stride);
  if (priv->rx_cq[i])
   mlx4_en_destroy_cq(priv, &priv->rx_cq[i]);
 }
 for (t = 0; t < MLX4_EN_NUM_TX_TYPES; t++) {
  for (i = 0; i < priv->tx_ring_num[t]; i++) {
   if (priv->tx_ring[t][i])
    mlx4_en_destroy_tx_ring(priv,
       &priv->tx_ring[t][i]);
   if (priv->tx_cq[t][i])
    mlx4_en_destroy_cq(priv, &priv->tx_cq[t][i]);
  }
 }
 return -ENOMEM;
}
