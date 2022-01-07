
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cpsw_priv {int msg_enable; } ;


 struct cpsw_priv* netdev_priv (struct net_device*) ;

u32 cpsw_get_msglevel(struct net_device *ndev)
{
 struct cpsw_priv *priv = netdev_priv(ndev);

 return priv->msg_enable;
}
