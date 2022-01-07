
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int len; scalar_t__ ip_summed; int data; int head; } ;
struct net_device {int features; } ;
struct TYPE_2__ {scalar_t__ gso_size; } ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int ENOMEM ;
 int ETH_FCS_LEN ;
 int ETH_ZLEN ;
 int GFP_ATOMIC ;
 int NETIF_F_HW_CSUM ;
 int crc32_le (int ,int ,int) ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int memmove (int ,int ,int) ;
 scalar_t__ skb_cloned (struct sk_buff*) ;
 struct sk_buff* skb_copy_expand (struct sk_buff*,int ,int,int ) ;
 scalar_t__ skb_header_cloned (struct sk_buff*) ;
 int skb_headroom (struct sk_buff*) ;
 int skb_put_u8 (struct sk_buff*,int) ;
 int skb_put_zero (struct sk_buff*,int) ;
 int skb_set_tail_pointer (struct sk_buff*,int) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int macb_pad_and_fcs(struct sk_buff **skb, struct net_device *ndev)
{
 bool cloned = skb_cloned(*skb) || skb_header_cloned(*skb);
 int padlen = ETH_ZLEN - (*skb)->len;
 int headroom = skb_headroom(*skb);
 int tailroom = skb_tailroom(*skb);
 struct sk_buff *nskb;
 u32 fcs;

 if (!(ndev->features & NETIF_F_HW_CSUM) ||
     !((*skb)->ip_summed != CHECKSUM_PARTIAL) ||
     skb_shinfo(*skb)->gso_size)
  return 0;

 if (padlen <= 0) {

  if (tailroom >= ETH_FCS_LEN)
   goto add_fcs;

  else if (!cloned && headroom + tailroom >= ETH_FCS_LEN)
   padlen = 0;

  else
   padlen = ETH_FCS_LEN;
 } else {

  padlen += ETH_FCS_LEN;
 }

 if (!cloned && headroom + tailroom >= padlen) {
  (*skb)->data = memmove((*skb)->head, (*skb)->data, (*skb)->len);
  skb_set_tail_pointer(*skb, (*skb)->len);
 } else {
  nskb = skb_copy_expand(*skb, 0, padlen, GFP_ATOMIC);
  if (!nskb)
   return -ENOMEM;

  dev_consume_skb_any(*skb);
  *skb = nskb;
 }

 if (padlen > ETH_FCS_LEN)
  skb_put_zero(*skb, padlen - ETH_FCS_LEN);

add_fcs:

 fcs = crc32_le(~0, (*skb)->data, (*skb)->len);
 fcs = ~fcs;

 skb_put_u8(*skb, fcs & 0xff);
 skb_put_u8(*skb, (fcs >> 8) & 0xff);
 skb_put_u8(*skb, (fcs >> 16) & 0xff);
 skb_put_u8(*skb, (fcs >> 24) & 0xff);

 return 0;
}
