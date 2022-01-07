
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int pkt_type; int dev; } ;
struct rmnet_priv {int gro_cells; } ;


 int PACKET_HOST ;
 int gro_cells_receive (int *,struct sk_buff*) ;
 struct rmnet_priv* netdev_priv (int ) ;
 int rmnet_vnd_rx_fixup (struct sk_buff*,int ) ;
 int skb_reset_network_header (struct sk_buff*) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 int skb_set_mac_header (struct sk_buff*,int ) ;

__attribute__((used)) static void
rmnet_deliver_skb(struct sk_buff *skb)
{
 struct rmnet_priv *priv = netdev_priv(skb->dev);

 skb_reset_transport_header(skb);
 skb_reset_network_header(skb);
 rmnet_vnd_rx_fixup(skb, skb->dev);

 skb->pkt_type = PACKET_HOST;
 skb_set_mac_header(skb, 0);
 gro_cells_receive(&priv->gro_cells, skb);
}
