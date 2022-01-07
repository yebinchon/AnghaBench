
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct de_private {int msg_enable; } ;


 struct de_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void de_set_msglevel(struct net_device *dev, u32 msglvl)
{
 struct de_private *de = netdev_priv(dev);

 de->msg_enable = msglvl;
}
