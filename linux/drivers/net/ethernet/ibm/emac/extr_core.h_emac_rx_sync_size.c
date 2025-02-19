
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NET_IP_ALIGN ;
 int SKB_DATA_ALIGN (scalar_t__) ;
 scalar_t__ emac_rx_size (int) ;

__attribute__((used)) static inline int emac_rx_sync_size(int mtu)
{
 return SKB_DATA_ALIGN(emac_rx_size(mtu) + NET_IP_ALIGN);
}
