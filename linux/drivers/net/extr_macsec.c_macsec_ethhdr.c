
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct macsec_eth_header {int dummy; } ;


 scalar_t__ skb_mac_header (struct sk_buff*) ;

__attribute__((used)) static struct macsec_eth_header *macsec_ethhdr(struct sk_buff *skb)
{
 return (struct macsec_eth_header *)skb_mac_header(skb);
}
