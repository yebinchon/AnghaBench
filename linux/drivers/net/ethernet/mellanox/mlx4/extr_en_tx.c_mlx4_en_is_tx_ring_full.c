
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_tx_ring {scalar_t__ prod; scalar_t__ cons; scalar_t__ full_size; } ;



__attribute__((used)) static inline bool mlx4_en_is_tx_ring_full(struct mlx4_en_tx_ring *ring)
{
 return ring->prod - ring->cons > ring->full_size;
}
