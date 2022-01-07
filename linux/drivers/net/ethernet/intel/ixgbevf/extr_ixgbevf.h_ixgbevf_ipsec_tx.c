
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_tx_buffer {int dummy; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_ipsec_tx_data {int dummy; } ;



__attribute__((used)) static inline int ixgbevf_ipsec_tx(struct ixgbevf_ring *tx_ring,
       struct ixgbevf_tx_buffer *first,
       struct ixgbevf_ipsec_tx_data *itd)
{ return 0; }
