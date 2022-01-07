
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {void* ml_priv; } ;
struct can_priv {unsigned int echo_skb_max; int restart_work; int state; void* echo_skb; struct net_device* dev; } ;
struct can_ml_priv {int dummy; } ;


 int ALIGN (int,int) ;
 int CAN_STATE_STOPPED ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int NETDEV_ALIGN ;
 int NET_NAME_UNKNOWN ;
 struct net_device* alloc_netdev_mqs (int,char*,int ,int ,unsigned int,unsigned int) ;
 int can_restart_work ;
 int can_setup ;
 struct can_priv* netdev_priv (struct net_device*) ;

struct net_device *alloc_candev_mqs(int sizeof_priv, unsigned int echo_skb_max,
        unsigned int txqs, unsigned int rxqs)
{
 struct net_device *dev;
 struct can_priv *priv;
 int size;
 size = ALIGN(sizeof_priv, NETDEV_ALIGN) + sizeof(struct can_ml_priv);

 if (echo_skb_max)
  size = ALIGN(size, sizeof(struct sk_buff *)) +
   echo_skb_max * sizeof(struct sk_buff *);

 dev = alloc_netdev_mqs(size, "can%d", NET_NAME_UNKNOWN, can_setup,
          txqs, rxqs);
 if (!dev)
  return ((void*)0);

 priv = netdev_priv(dev);
 priv->dev = dev;

 dev->ml_priv = (void *)priv + ALIGN(sizeof_priv, NETDEV_ALIGN);

 if (echo_skb_max) {
  priv->echo_skb_max = echo_skb_max;
  priv->echo_skb = (void *)priv +
   (size - echo_skb_max * sizeof(struct sk_buff *));
 }

 priv->state = CAN_STATE_STOPPED;

 INIT_DELAYED_WORK(&priv->restart_work, can_restart_work);

 return dev;
}
