
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct b44 {int msg_enable; } ;


 struct b44* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 b44_get_msglevel(struct net_device *dev)
{
 struct b44 *bp = netdev_priv(dev);
 return bp->msg_enable;
}
