
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ravb_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct ravb_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ravb_set_msglevel(struct net_device *ndev, u32 value)
{
 struct ravb_private *priv = netdev_priv(ndev);

 priv->msg_enable = value;
}
