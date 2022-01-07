
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int ip_summed; } ;
struct e1000_adapter {int hw_csum_good; int hw_csum_err; TYPE_1__* netdev; } ;
struct TYPE_2__ {int features; } ;


 int CHECKSUM_UNNECESSARY ;
 int E1000_RXD_ERR_IPE ;
 int E1000_RXD_ERR_TCPE ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_TCPCS ;
 int E1000_RXD_STAT_UDPCS ;
 int NETIF_F_RXCSUM ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static void e1000_rx_checksum(struct e1000_adapter *adapter, u32 status_err,
         struct sk_buff *skb)
{
 u16 status = (u16)status_err;
 u8 errors = (u8)(status_err >> 24);

 skb_checksum_none_assert(skb);


 if (!(adapter->netdev->features & NETIF_F_RXCSUM))
  return;


 if (status & E1000_RXD_STAT_IXSM)
  return;


 if (errors & (E1000_RXD_ERR_TCPE | E1000_RXD_ERR_IPE)) {

  adapter->hw_csum_err++;
  return;
 }


 if (!(status & (E1000_RXD_STAT_TCPCS | E1000_RXD_STAT_UDPCS)))
  return;


 skb->ip_summed = CHECKSUM_UNNECESSARY;
 adapter->hw_csum_good++;
}
