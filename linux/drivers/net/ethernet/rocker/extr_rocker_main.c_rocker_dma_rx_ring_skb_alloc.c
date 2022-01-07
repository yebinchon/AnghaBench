
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rocker_port {struct net_device* dev; } ;
struct rocker_desc_info {scalar_t__ tlv_size; } ;
struct net_device {int dummy; } ;


 int ENOMEM ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 struct sk_buff* netdev_alloc_skb_ip_align (struct net_device*,size_t) ;
 int rocker_desc_cookie_ptr_set (struct rocker_desc_info*,struct sk_buff*) ;
 int rocker_dma_rx_ring_skb_map (struct rocker_port const*,struct rocker_desc_info*,struct sk_buff*,size_t) ;
 size_t rocker_port_rx_buf_len (struct rocker_port const*) ;

__attribute__((used)) static int rocker_dma_rx_ring_skb_alloc(const struct rocker_port *rocker_port,
     struct rocker_desc_info *desc_info)
{
 struct net_device *dev = rocker_port->dev;
 struct sk_buff *skb;
 size_t buf_len = rocker_port_rx_buf_len(rocker_port);
 int err;




 rocker_desc_cookie_ptr_set(desc_info, ((void*)0));
 desc_info->tlv_size = 0;

 skb = netdev_alloc_skb_ip_align(dev, buf_len);
 if (!skb)
  return -ENOMEM;
 err = rocker_dma_rx_ring_skb_map(rocker_port, desc_info, skb, buf_len);
 if (err) {
  dev_kfree_skb_any(skb);
  return err;
 }
 rocker_desc_cookie_ptr_set(desc_info, skb);
 return 0;
}
