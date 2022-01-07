
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnx2x {int msg_enable; } ;


 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 bnx2x_get_msglevel(struct net_device *dev)
{
 struct bnx2x *bp = netdev_priv(dev);

 return bp->msg_enable;
}
