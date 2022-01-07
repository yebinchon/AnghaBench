
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct usbnet {TYPE_1__* net; } ;
struct sk_buff {scalar_t__ len; int* data; } ;
struct TYPE_4__ {int h_dest; } ;
struct TYPE_3__ {int dev_addr; } ;


 scalar_t__ ETH_HLEN ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int usbnet_cdc_zte_rx_fixup(struct usbnet *dev, struct sk_buff *skb)
{
 if (skb->len < ETH_HLEN || !(skb->data[0] & 0x02))
  return 1;

 skb_reset_mac_header(skb);
 ether_addr_copy(eth_hdr(skb)->h_dest, dev->net->dev_addr);

 return 1;
}
