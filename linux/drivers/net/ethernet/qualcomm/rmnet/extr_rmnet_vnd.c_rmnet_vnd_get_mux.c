
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rmnet_priv {int mux_id; } ;
struct net_device {int dummy; } ;


 struct rmnet_priv* netdev_priv (struct net_device*) ;

u8 rmnet_vnd_get_mux(struct net_device *rmnet_dev)
{
 struct rmnet_priv *priv;

 priv = netdev_priv(rmnet_dev);
 return priv->mux_id;
}
