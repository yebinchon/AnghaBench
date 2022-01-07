
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgb_desc_ring {int dummy; } ;


 int IXGB_DESC_UNUSED (struct ixgb_desc_ring*) ;
 int __ixgb_maybe_stop_tx (struct net_device*,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int ixgb_maybe_stop_tx(struct net_device *netdev,
                              struct ixgb_desc_ring *tx_ring, int size)
{
 if (likely(IXGB_DESC_UNUSED(tx_ring) >= size))
  return 0;
 return __ixgb_maybe_stop_tx(netdev, size);
}
