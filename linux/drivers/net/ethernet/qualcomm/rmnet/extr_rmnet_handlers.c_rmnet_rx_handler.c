
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ pkt_type; struct net_device* dev; } ;
struct rmnet_port {int rmnet_mode; int bridge_ep; } ;
struct net_device {int dummy; } ;
typedef int rx_handler_result_t ;


 scalar_t__ PACKET_LOOPBACK ;


 int RX_HANDLER_CONSUMED ;
 int RX_HANDLER_PASS ;
 int rmnet_bridge_handler (struct sk_buff*,int ) ;
 struct rmnet_port* rmnet_get_port (struct net_device*) ;
 int rmnet_map_ingress_handler (struct sk_buff*,struct rmnet_port*) ;

rx_handler_result_t rmnet_rx_handler(struct sk_buff **pskb)
{
 struct sk_buff *skb = *pskb;
 struct rmnet_port *port;
 struct net_device *dev;

 if (!skb)
  goto done;

 if (skb->pkt_type == PACKET_LOOPBACK)
  return RX_HANDLER_PASS;

 dev = skb->dev;
 port = rmnet_get_port(dev);

 switch (port->rmnet_mode) {
 case 128:
  rmnet_map_ingress_handler(skb, port);
  break;
 case 129:
  rmnet_bridge_handler(skb, port->bridge_ep);
  break;
 }

done:
 return RX_HANDLER_CONSUMED;
}
