
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * rtnl_link_ops; } ;
struct can_priv {int data_bitrate_const_cnt; int data_bitrate_const; int bitrate_const_cnt; int bitrate_const; int do_set_termination; int termination_const; int termination_const_cnt; } ;


 int EINVAL ;
 int can_link_ops ;
 struct can_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int register_netdev (struct net_device*) ;

int register_candev(struct net_device *dev)
{
 struct can_priv *priv = netdev_priv(dev);





 if ((!priv->termination_const != !priv->termination_const_cnt) ||
     (!priv->termination_const != !priv->do_set_termination))
  return -EINVAL;

 if (!priv->bitrate_const != !priv->bitrate_const_cnt)
  return -EINVAL;

 if (!priv->data_bitrate_const != !priv->data_bitrate_const_cnt)
  return -EINVAL;

 dev->rtnl_link_ops = &can_link_ops;
 netif_carrier_off(dev);

 return register_netdev(dev);
}
