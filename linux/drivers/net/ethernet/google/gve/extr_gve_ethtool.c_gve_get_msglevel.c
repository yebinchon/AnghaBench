
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct gve_priv {int msg_enable; } ;


 struct gve_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 gve_get_msglevel(struct net_device *netdev)
{
 struct gve_priv *priv = netdev_priv(netdev);

 return priv->msg_enable;
}
