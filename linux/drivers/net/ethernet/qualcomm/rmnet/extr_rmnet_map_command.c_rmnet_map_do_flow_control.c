
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct rmnet_port {int dummy; } ;
struct rmnet_endpoint {struct net_device* egress_dev; } ;
struct net_device {int dummy; } ;


 scalar_t__ RMNET_MAP_COMMAND_ACK ;
 scalar_t__ RMNET_MAP_COMMAND_UNSUPPORTED ;
 scalar_t__ RMNET_MAP_GET_MUX_ID (struct sk_buff*) ;
 scalar_t__ RMNET_MAX_LOGICAL_EP ;
 scalar_t__ RX_HANDLER_CONSUMED ;
 int kfree_skb (struct sk_buff*) ;
 struct rmnet_endpoint* rmnet_get_endpoint (struct rmnet_port*,scalar_t__) ;
 int rmnet_vnd_do_flow_control (struct net_device*,int) ;

__attribute__((used)) static u8 rmnet_map_do_flow_control(struct sk_buff *skb,
        struct rmnet_port *port,
        int enable)
{
 struct rmnet_endpoint *ep;
 struct net_device *vnd;
 u8 mux_id;
 int r;

 mux_id = RMNET_MAP_GET_MUX_ID(skb);

 if (mux_id >= RMNET_MAX_LOGICAL_EP) {
  kfree_skb(skb);
  return RX_HANDLER_CONSUMED;
 }

 ep = rmnet_get_endpoint(port, mux_id);
 if (!ep) {
  kfree_skb(skb);
  return RX_HANDLER_CONSUMED;
 }

 vnd = ep->egress_dev;





 r = rmnet_vnd_do_flow_control(vnd, enable);
 if (r) {
  kfree_skb(skb);
  return RMNET_MAP_COMMAND_UNSUPPORTED;
 } else {
  return RMNET_MAP_COMMAND_ACK;
 }
}
