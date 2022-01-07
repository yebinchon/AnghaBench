
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct devlink_port {int dummy; } ;
struct bnxt {struct devlink_port dl_port; } ;


 struct bnxt* netdev_priv (struct net_device*) ;

__attribute__((used)) static struct devlink_port *bnxt_get_devlink_port(struct net_device *dev)
{
 struct bnxt *bp = netdev_priv(dev);

 return &bp->dl_port;
}
