
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx4_en_rx_ring {scalar_t__ prod; scalar_t__ cons; } ;



__attribute__((used)) static bool mlx4_en_is_ring_empty(const struct mlx4_en_rx_ring *ring)
{
 return ring->prod == ring->cons;
}
