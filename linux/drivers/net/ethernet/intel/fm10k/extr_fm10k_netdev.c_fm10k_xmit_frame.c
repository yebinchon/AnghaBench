
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_hdr {scalar_t__ h_vlan_TCI; scalar_t__ h_vlan_encapsulated_proto; } ;
struct sk_buff {unsigned int queue_mapping; scalar_t__ protocol; int len; scalar_t__ data; } ;
struct net_device {int dummy; } ;
struct fm10k_intfc {int * tx_ring; int num_tx_queues; } ;
typedef int netdev_tx_t ;
typedef scalar_t__ __be16 ;


 scalar_t__ ETH_HLEN ;
 int ETH_P_8021Q ;
 int ETH_P_802_2 ;
 int GFP_ATOMIC ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int READ_ONCE (int ) ;
 int VLAN_ETH_HLEN ;
 scalar_t__ VLAN_HLEN ;
 int __skb_pull (struct sk_buff*,scalar_t__) ;
 int __skb_put (struct sk_buff*,int) ;
 int __vlan_hwaccel_put_tag (struct sk_buff*,scalar_t__,int) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int fm10k_xmit_frame_ring (struct sk_buff*,int ) ;
 scalar_t__ htons (int ) ;
 int memmove (scalar_t__,scalar_t__,int) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int ntohs (scalar_t__) ;
 int pskb_may_pull (struct sk_buff*,int ) ;
 int skb_cow_head (struct sk_buff*,int ) ;
 scalar_t__ skb_pad (struct sk_buff*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;
 int skb_vlan_tag_present (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t fm10k_xmit_frame(struct sk_buff *skb, struct net_device *dev)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 int num_tx_queues = READ_ONCE(interface->num_tx_queues);
 unsigned int r_idx = skb->queue_mapping;
 int err;

 if (!num_tx_queues)
  return NETDEV_TX_BUSY;

 if ((skb->protocol == htons(ETH_P_8021Q)) &&
     !skb_vlan_tag_present(skb)) {



  struct vlan_hdr *vhdr;
  __be16 proto;


  skb = skb_share_check(skb, GFP_ATOMIC);
  if (!skb)
   return NETDEV_TX_OK;


  if (unlikely(!pskb_may_pull(skb, VLAN_ETH_HLEN)))
   return NETDEV_TX_OK;


  err = skb_cow_head(skb, 0);
  if (err) {
   dev_kfree_skb(skb);
   return NETDEV_TX_OK;
  }


  vhdr = (struct vlan_hdr *)(skb->data + ETH_HLEN);


  __vlan_hwaccel_put_tag(skb,
           htons(ETH_P_8021Q),
           ntohs(vhdr->h_vlan_TCI));
  proto = vhdr->h_vlan_encapsulated_proto;
  skb->protocol = (ntohs(proto) >= 1536) ? proto :
        htons(ETH_P_802_2);


  memmove(skb->data + VLAN_HLEN, skb->data, 12);
  __skb_pull(skb, VLAN_HLEN);
  skb_reset_mac_header(skb);
 }




 if (unlikely(skb->len < 17)) {
  int pad_len = 17 - skb->len;

  if (skb_pad(skb, pad_len))
   return NETDEV_TX_OK;
  __skb_put(skb, pad_len);
 }

 if (r_idx >= num_tx_queues)
  r_idx %= num_tx_queues;

 err = fm10k_xmit_frame_ring(skb, interface->tx_ring[r_idx]);

 return err;
}
