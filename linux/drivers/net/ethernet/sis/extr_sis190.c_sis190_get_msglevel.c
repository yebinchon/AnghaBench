
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sis190_private {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct sis190_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 sis190_get_msglevel(struct net_device *dev)
{
 struct sis190_private *tp = netdev_priv(dev);

 return tp->msg_enable;
}
