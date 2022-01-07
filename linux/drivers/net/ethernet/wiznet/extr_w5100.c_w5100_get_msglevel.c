
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct w5100_priv {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct w5100_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 w5100_get_msglevel(struct net_device *ndev)
{
 struct w5100_priv *priv = netdev_priv(ndev);

 return priv->msg_enable;
}
