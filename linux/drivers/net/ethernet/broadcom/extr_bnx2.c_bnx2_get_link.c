
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnx2 {int link_up; } ;


 struct bnx2* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
bnx2_get_link(struct net_device *dev)
{
 struct bnx2 *bp = netdev_priv(dev);

 return bp->link_up;
}
