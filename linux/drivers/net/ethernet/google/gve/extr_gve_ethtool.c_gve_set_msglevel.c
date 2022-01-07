
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct gve_priv {int msg_enable; } ;


 struct gve_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void gve_set_msglevel(struct net_device *netdev, u32 value)
{
 struct gve_priv *priv = netdev_priv(netdev);

 priv->msg_enable = value;
}
