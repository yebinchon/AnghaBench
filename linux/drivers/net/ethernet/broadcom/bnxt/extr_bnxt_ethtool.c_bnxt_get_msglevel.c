
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct bnxt {int msg_enable; } ;


 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 bnxt_get_msglevel(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);

 return bp->msg_enable;
}
