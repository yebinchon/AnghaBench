
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ravb_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct ravb_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ravb_get_msglevel(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);

 return priv->msg_enable;
}
