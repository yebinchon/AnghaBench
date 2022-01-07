
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct cas {int msg_enable; } ;


 struct cas* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 cas_get_msglevel(struct net_device *dev)
{
 struct cas *cp = netdev_priv(dev);
 return cp->msg_enable;
}
