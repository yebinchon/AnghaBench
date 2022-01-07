
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int state; } ;


 int __IXGBE_RX_3K_BUFFER ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline unsigned int ixgbe_rx_pg_order(struct ixgbe_ring *ring)
{

 if (test_bit(__IXGBE_RX_3K_BUFFER, &ring->state))
  return 1;

 return 0;
}
