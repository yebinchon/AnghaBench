
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {scalar_t__ protocol; } ;
struct TYPE_2__ {int protocol; } ;


 int ETH_P_IP ;
 int FTGMAC100_TXDES1_IP_CHKSUM ;
 int FTGMAC100_TXDES1_TCP_CHKSUM ;
 int FTGMAC100_TXDES1_UDP_CHKSUM ;



 scalar_t__ cpu_to_be16 (int ) ;
 TYPE_1__* ip_hdr (struct sk_buff*) ;
 scalar_t__ skb_checksum_help (struct sk_buff*) ;

__attribute__((used)) static bool ftgmac100_prep_tx_csum(struct sk_buff *skb, u32 *csum_vlan)
{
 if (skb->protocol == cpu_to_be16(ETH_P_IP)) {
  u8 ip_proto = ip_hdr(skb)->protocol;

  *csum_vlan |= FTGMAC100_TXDES1_IP_CHKSUM;
  switch(ip_proto) {
  case 129:
   *csum_vlan |= FTGMAC100_TXDES1_TCP_CHKSUM;
   return 1;
  case 128:
   *csum_vlan |= FTGMAC100_TXDES1_UDP_CHKSUM;
   return 1;
  case 130:
   return 1;
  }
 }
 return skb_checksum_help(skb) == 0;
}
