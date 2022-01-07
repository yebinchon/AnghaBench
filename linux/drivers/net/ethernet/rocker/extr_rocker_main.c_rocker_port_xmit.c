
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int data; } ;
struct rocker_tlv {int dummy; } ;
struct rocker_port {int tx_ring; struct rocker* rocker; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;
struct TYPE_3__ {int tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef int skb_frag_t ;
typedef int netdev_tx_t ;
struct TYPE_4__ {int nr_frags; int * frags; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int ROCKER_TLV_TX_FRAGS ;
 int ROCKER_TX_FRAGS_MAX ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ net_ratelimit () ;
 int netdev_err (struct net_device*,char*) ;
 struct rocker_port* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int rocker_desc_cookie_ptr_set (struct rocker_desc_info*,struct sk_buff*) ;
 int rocker_desc_gen_clear (struct rocker_desc_info*) ;
 struct rocker_desc_info* rocker_desc_head_get (int *) ;
 int rocker_desc_head_set (struct rocker*,int *,struct rocker_desc_info*) ;
 int rocker_tlv_nest_cancel (struct rocker_desc_info*,struct rocker_tlv*) ;
 int rocker_tlv_nest_end (struct rocker_desc_info*,struct rocker_tlv*) ;
 struct rocker_tlv* rocker_tlv_nest_start (struct rocker_desc_info*,int ) ;
 int rocker_tx_desc_frag_map_put (struct rocker_port*,struct rocker_desc_info*,int ,int ) ;
 int rocker_tx_desc_frags_unmap (struct rocker_port*,struct rocker_desc_info*) ;
 int skb_frag_address (int const*) ;
 int skb_frag_size (int const*) ;
 int skb_headlen (struct sk_buff*) ;
 int skb_linearize (struct sk_buff*) ;
 TYPE_2__* skb_shinfo (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static netdev_tx_t rocker_port_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct rocker_port *rocker_port = netdev_priv(dev);
 struct rocker *rocker = rocker_port->rocker;
 struct rocker_desc_info *desc_info;
 struct rocker_tlv *frags;
 int i;
 int err;

 desc_info = rocker_desc_head_get(&rocker_port->tx_ring);
 if (unlikely(!desc_info)) {
  if (net_ratelimit())
   netdev_err(dev, "tx ring full when queue awake\n");
  return NETDEV_TX_BUSY;
 }

 rocker_desc_cookie_ptr_set(desc_info, skb);

 frags = rocker_tlv_nest_start(desc_info, ROCKER_TLV_TX_FRAGS);
 if (!frags)
  goto out;
 err = rocker_tx_desc_frag_map_put(rocker_port, desc_info,
       skb->data, skb_headlen(skb));
 if (err)
  goto nest_cancel;
 if (skb_shinfo(skb)->nr_frags > ROCKER_TX_FRAGS_MAX) {
  err = skb_linearize(skb);
  if (err)
   goto unmap_frags;
 }

 for (i = 0; i < skb_shinfo(skb)->nr_frags; i++) {
  const skb_frag_t *frag = &skb_shinfo(skb)->frags[i];

  err = rocker_tx_desc_frag_map_put(rocker_port, desc_info,
        skb_frag_address(frag),
        skb_frag_size(frag));
  if (err)
   goto unmap_frags;
 }
 rocker_tlv_nest_end(desc_info, frags);

 rocker_desc_gen_clear(desc_info);
 rocker_desc_head_set(rocker, &rocker_port->tx_ring, desc_info);

 desc_info = rocker_desc_head_get(&rocker_port->tx_ring);
 if (!desc_info)
  netif_stop_queue(dev);

 return NETDEV_TX_OK;

unmap_frags:
 rocker_tx_desc_frags_unmap(rocker_port, desc_info);
nest_cancel:
 rocker_tlv_nest_cancel(desc_info, frags);
out:
 dev_kfree_skb(skb);
 dev->stats.tx_dropped++;

 return NETDEV_TX_OK;
}
