
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usbnet {TYPE_1__* net; } ;
struct sk_buff {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int __be16 ;
struct TYPE_4__ {int h_dest; int h_source; int h_proto; } ;
struct TYPE_3__ {int dev_addr; } ;


 int ETH_ALEN ;
 scalar_t__ ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_802_3 ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int MBIM_IPS0_VID ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,int ,int) ;
 int do_neigh_solicit (struct usbnet*,int*,int) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int eth_zero_addr (int ) ;
 int htons (int ) ;
 int is_neigh_solicit (int*,size_t) ;
 int memcpy (int ,int ,int ) ;
 struct sk_buff* netdev_alloc_skb_ip_align (TYPE_1__*,scalar_t__) ;
 int skb_put (struct sk_buff*,scalar_t__) ;
 int skb_put_data (struct sk_buff*,int*,size_t) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static struct sk_buff *cdc_mbim_process_dgram(struct usbnet *dev, u8 *buf, size_t len, u16 tci)
{
 __be16 proto = htons(ETH_P_802_3);
 struct sk_buff *skb = ((void*)0);

 if (tci < 256 || tci == MBIM_IPS0_VID) {
  if (len < sizeof(struct iphdr))
   goto err;

  switch (*buf & 0xf0) {
  case 0x40:
   proto = htons(ETH_P_IP);
   break;
  case 0x60:
   if (is_neigh_solicit(buf, len))
    do_neigh_solicit(dev, buf, tci);
   proto = htons(ETH_P_IPV6);
   break;
  default:
   goto err;
  }
 }

 skb = netdev_alloc_skb_ip_align(dev->net, len + ETH_HLEN);
 if (!skb)
  goto err;


 skb_put(skb, ETH_HLEN);
 skb_reset_mac_header(skb);
 eth_hdr(skb)->h_proto = proto;
 eth_zero_addr(eth_hdr(skb)->h_source);
 memcpy(eth_hdr(skb)->h_dest, dev->net->dev_addr, ETH_ALEN);


 skb_put_data(skb, buf, len);


 if (tci)
  __vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q), tci);
err:
 return skb;
}
