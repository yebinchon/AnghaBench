
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ave_private {int msg_enable; } ;


 struct ave_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ave_ethtool_get_msglevel(struct net_device *ndev)
{
 struct ave_private *priv = netdev_priv(ndev);

 return priv->msg_enable;
}
