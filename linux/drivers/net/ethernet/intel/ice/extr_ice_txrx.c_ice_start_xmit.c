
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct ice_vsi {struct ice_ring** tx_rings; } ;
struct ice_ring {int dummy; } ;
struct ice_netdev_priv {struct ice_vsi* vsi; } ;
typedef int netdev_tx_t ;


 int ICE_MIN_TX_LEN ;
 int NETDEV_TX_OK ;
 int ice_xmit_frame_ring (struct sk_buff*,struct ice_ring*) ;
 struct ice_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ skb_put_padto (struct sk_buff*,int ) ;

netdev_tx_t ice_start_xmit(struct sk_buff *skb, struct net_device *netdev)
{
 struct ice_netdev_priv *np = netdev_priv(netdev);
 struct ice_vsi *vsi = np->vsi;
 struct ice_ring *tx_ring;

 tx_ring = vsi->tx_rings[skb->queue_mapping];




 if (skb_put_padto(skb, ICE_MIN_TX_LEN))
  return NETDEV_TX_OK;

 return ice_xmit_frame_ring(skb, tx_ring);
}
