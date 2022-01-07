
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rocker_tlv {int dummy; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;


 int ROCKER_TLV_RX_MAX ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* rocker_desc_cookie_ptr_get (struct rocker_desc_info const*) ;
 int rocker_dma_rx_ring_skb_unmap (struct rocker const*,struct rocker_tlv const**) ;
 int rocker_tlv_parse_desc (struct rocker_tlv const**,int ,struct rocker_desc_info const*) ;

__attribute__((used)) static void rocker_dma_rx_ring_skb_free(const struct rocker *rocker,
     const struct rocker_desc_info *desc_info)
{
 const struct rocker_tlv *attrs[ROCKER_TLV_RX_MAX + 1];
 struct sk_buff *skb = rocker_desc_cookie_ptr_get(desc_info);

 if (!skb)
  return;
 rocker_tlv_parse_desc(attrs, ROCKER_TLV_RX_MAX, desc_info);
 rocker_dma_rx_ring_skb_unmap(rocker, attrs);
 dev_kfree_skb_any(skb);
}
