
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct r8152 {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct r8152* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 rtl8152_get_msglevel(struct net_device *dev)
{
 struct r8152 *tp = netdev_priv(dev);

 return tp->msg_enable;
}
