
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dev; } ;
struct ipvl_port {int mode; } ;
typedef int rx_handler_result_t ;





 int RX_HANDLER_CONSUMED ;
 int RX_HANDLER_PASS ;
 int WARN_ONCE (int,char*,int) ;
 int ipvlan_handle_mode_l2 (struct sk_buff**,struct ipvl_port*) ;
 int ipvlan_handle_mode_l3 (struct sk_buff**,struct ipvl_port*) ;
 struct ipvl_port* ipvlan_port_get_rcu (int ) ;
 int kfree_skb (struct sk_buff*) ;

rx_handler_result_t ipvlan_handle_frame(struct sk_buff **pskb)
{
 struct sk_buff *skb = *pskb;
 struct ipvl_port *port = ipvlan_port_get_rcu(skb->dev);

 if (!port)
  return RX_HANDLER_PASS;

 switch (port->mode) {
 case 130:
  return ipvlan_handle_mode_l2(pskb, port);
 case 129:
  return ipvlan_handle_mode_l3(pskb, port);




 }


 WARN_ONCE(1, "ipvlan_handle_frame() called for mode = [%hx]\n",
     port->mode);
 kfree_skb(skb);
 return RX_HANDLER_CONSUMED;
}
