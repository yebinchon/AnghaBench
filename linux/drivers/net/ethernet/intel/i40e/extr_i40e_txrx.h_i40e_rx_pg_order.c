
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_ring {int rx_buf_len; } ;


 int PAGE_SIZE ;

__attribute__((used)) static inline unsigned int i40e_rx_pg_order(struct i40e_ring *ring)
{

 if (ring->rx_buf_len > (PAGE_SIZE / 2))
  return 1;

 return 0;
}
