
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EMAC_MTU_OVERHEAD ;
 int ETH_DATA_LEN ;
 int MAL_MAX_RX_SIZE ;
 int mal_rx_size (scalar_t__) ;

__attribute__((used)) static inline int emac_rx_size(int mtu)
{
 if (mtu > ETH_DATA_LEN)
  return MAL_MAX_RX_SIZE;
 else
  return mal_rx_size(ETH_DATA_LEN + EMAC_MTU_OVERHEAD);
}
