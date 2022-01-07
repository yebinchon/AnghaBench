
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mlx4_en_rx_ring {int stride; struct mlx4_en_rx_desc* buf; } ;
struct mlx4_en_rx_desc {TYPE_4__* data; } ;
struct mlx4_en_priv {int num_frags; TYPE_3__* mdev; TYPE_1__* frag_info; } ;
struct TYPE_8__ {scalar_t__ addr; void* lkey; void* byte_count; } ;
struct TYPE_6__ {int key; } ;
struct TYPE_7__ {TYPE_2__ mr; } ;
struct TYPE_5__ {int frag_size; } ;


 int DS_SIZE ;
 int MLX4_EN_MEMTYPE_PAD ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static void mlx4_en_init_rx_desc(const struct mlx4_en_priv *priv,
     struct mlx4_en_rx_ring *ring, int index)
{
 struct mlx4_en_rx_desc *rx_desc = ring->buf + ring->stride * index;
 int possible_frags;
 int i;


 for (i = 0; i < priv->num_frags; i++) {
  rx_desc->data[i].byte_count =
   cpu_to_be32(priv->frag_info[i].frag_size);
  rx_desc->data[i].lkey = cpu_to_be32(priv->mdev->mr.key);
 }




 possible_frags = (ring->stride - sizeof(struct mlx4_en_rx_desc)) / DS_SIZE;
 for (i = priv->num_frags; i < possible_frags; i++) {
  rx_desc->data[i].byte_count = 0;
  rx_desc->data[i].lkey = cpu_to_be32(MLX4_EN_MEMTYPE_PAD);
  rx_desc->data[i].addr = 0;
 }
}
