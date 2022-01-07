
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {size_t queue_mapping; } ;
struct net_device {int dummy; } ;
struct i40e_vsi {struct i40e_ring** tx_rings; } ;
struct i40e_ring {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
typedef int netdev_tx_t ;


 int I40E_MIN_TX_LEN ;
 int NETDEV_TX_OK ;
 int i40e_xmit_frame_ring (struct sk_buff*,struct i40e_ring*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 scalar_t__ skb_put_padto (struct sk_buff*,int ) ;

netdev_tx_t i40e_lan_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 struct i40e_vsi *vsi = np->vsi;
 struct i40e_ring *tx_ring = vsi->tx_rings[skb->queue_mapping];




 if (skb_put_padto(skb, I40E_MIN_TX_LEN))
  return NETDEV_TX_OK;

 return i40e_xmit_frame_ring(skb, tx_ring);
}
