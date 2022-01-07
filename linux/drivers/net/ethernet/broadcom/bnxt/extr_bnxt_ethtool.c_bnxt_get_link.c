
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int link_up; } ;
struct bnxt {TYPE_1__ link_info; } ;


 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 bnxt_get_link(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);


 return bp->link_info.link_up;
}
