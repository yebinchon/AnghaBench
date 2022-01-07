
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_tx_buffer {int dummy; } ;
struct ixgbe_ring {int dummy; } ;
struct ixgbe_ipsec_tx_data {int dummy; } ;



__attribute__((used)) static inline int ixgbe_ipsec_tx(struct ixgbe_ring *tx_ring,
     struct ixgbe_tx_buffer *first,
     struct ixgbe_ipsec_tx_data *itd) { return 0; }
