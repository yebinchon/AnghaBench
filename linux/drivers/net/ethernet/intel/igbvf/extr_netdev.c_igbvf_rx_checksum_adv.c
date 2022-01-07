
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int ip_summed; } ;
struct igbvf_adapter {int flags; int hw_csum_good; int hw_csum_err; } ;


 int CHECKSUM_UNNECESSARY ;
 int E1000_RXDEXT_STATERR_IPE ;
 int E1000_RXDEXT_STATERR_TCPE ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_TCPCS ;
 int E1000_RXD_STAT_UDPCS ;
 int IGBVF_FLAG_RX_CSUM_DISABLED ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static inline void igbvf_rx_checksum_adv(struct igbvf_adapter *adapter,
      u32 status_err, struct sk_buff *skb)
{
 skb_checksum_none_assert(skb);


 if ((status_err & E1000_RXD_STAT_IXSM) ||
     (adapter->flags & IGBVF_FLAG_RX_CSUM_DISABLED))
  return;


 if (status_err &
     (E1000_RXDEXT_STATERR_TCPE | E1000_RXDEXT_STATERR_IPE)) {

  adapter->hw_csum_err++;
  return;
 }


 if (status_err & (E1000_RXD_STAT_TCPCS | E1000_RXD_STAT_UDPCS))
  skb->ip_summed = CHECKSUM_UNNECESSARY;

 adapter->hw_csum_good++;
}
