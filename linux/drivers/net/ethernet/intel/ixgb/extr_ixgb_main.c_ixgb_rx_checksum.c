
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int ip_summed; } ;
struct ixgb_rx_desc {int status; int errors; } ;
struct ixgb_adapter {int hw_csum_rx_good; int hw_csum_rx_error; } ;


 int CHECKSUM_UNNECESSARY ;
 int IXGB_RX_DESC_ERRORS_TCPE ;
 int IXGB_RX_DESC_STATUS_IXSM ;
 int IXGB_RX_DESC_STATUS_TCPCS ;
 int skb_checksum_none_assert (struct sk_buff*) ;

__attribute__((used)) static void
ixgb_rx_checksum(struct ixgb_adapter *adapter,
                 struct ixgb_rx_desc *rx_desc,
                 struct sk_buff *skb)
{



 if ((rx_desc->status & IXGB_RX_DESC_STATUS_IXSM) ||
    (!(rx_desc->status & IXGB_RX_DESC_STATUS_TCPCS))) {
  skb_checksum_none_assert(skb);
  return;
 }



 if (rx_desc->errors & IXGB_RX_DESC_ERRORS_TCPE) {

  skb_checksum_none_assert(skb);
  adapter->hw_csum_rx_error++;
 } else {

  skb->ip_summed = CHECKSUM_UNNECESSARY;
  adapter->hw_csum_rx_good++;
 }
}
