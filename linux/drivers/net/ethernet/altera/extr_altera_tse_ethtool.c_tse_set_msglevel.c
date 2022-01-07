
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct net_device {int dummy; } ;
struct altera_tse_private {int msg_enable; } ;


 struct altera_tse_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void tse_set_msglevel(struct net_device *dev, uint32_t data)
{
 struct altera_tse_private *priv = netdev_priv(dev);
 priv->msg_enable = data;
}
