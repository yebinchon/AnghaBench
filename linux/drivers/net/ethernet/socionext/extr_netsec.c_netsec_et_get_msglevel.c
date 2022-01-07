
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct netsec_priv {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct netsec_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 netsec_et_get_msglevel(struct net_device *dev)
{
 struct netsec_priv *priv = netdev_priv(dev);

 return priv->msg_enable;
}
