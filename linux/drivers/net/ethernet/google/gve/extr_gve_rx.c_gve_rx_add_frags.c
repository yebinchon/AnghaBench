
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct napi_struct {int dummy; } ;
struct gve_rx_slot_page_info {scalar_t__ page_offset; int page; } ;


 scalar_t__ GVE_RX_PAD ;
 int PAGE_SIZE ;
 struct sk_buff* napi_get_frags (struct napi_struct*) ;
 int skb_add_rx_frag (struct sk_buff*,int ,int ,scalar_t__,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct sk_buff *gve_rx_add_frags(struct net_device *dev,
     struct napi_struct *napi,
     struct gve_rx_slot_page_info *page_info,
     u16 len)
{
 struct sk_buff *skb = napi_get_frags(napi);

 if (unlikely(!skb))
  return ((void*)0);

 skb_add_rx_frag(skb, 0, page_info->page,
   page_info->page_offset +
   GVE_RX_PAD, len, PAGE_SIZE / 2);

 return skb;
}
