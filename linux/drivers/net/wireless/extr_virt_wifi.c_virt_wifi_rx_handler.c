
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virt_wifi_netdev_priv {TYPE_1__* upperdev; int is_connected; } ;
struct sk_buff {int pkt_type; TYPE_1__* dev; } ;
typedef int rx_handler_result_t ;
struct TYPE_2__ {int dev; int rx_handler_data; } ;


 int GFP_ATOMIC ;
 int PACKET_HOST ;
 int RX_HANDLER_ANOTHER ;
 int RX_HANDLER_CONSUMED ;
 int RX_HANDLER_PASS ;
 int dev_err (int *,char*) ;
 struct virt_wifi_netdev_priv* rcu_dereference (int ) ;
 struct sk_buff* skb_share_check (struct sk_buff*,int ) ;

__attribute__((used)) static rx_handler_result_t virt_wifi_rx_handler(struct sk_buff **pskb)
{
 struct sk_buff *skb = *pskb;
 struct virt_wifi_netdev_priv *priv =
  rcu_dereference(skb->dev->rx_handler_data);

 if (!priv->is_connected)
  return RX_HANDLER_PASS;


 skb = skb_share_check(skb, GFP_ATOMIC);
 if (!skb) {
  dev_err(&priv->upperdev->dev, "can't skb_share_check\n");
  return RX_HANDLER_CONSUMED;
 }

 *pskb = skb;
 skb->dev = priv->upperdev;
 skb->pkt_type = PACKET_HOST;
 return RX_HANDLER_ANOTHER;
}
