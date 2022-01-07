
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct kaweth_device {int linkstate; } ;


 struct kaweth_device* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 kaweth_get_link(struct net_device *dev)
{
 struct kaweth_device *kaweth = netdev_priv(dev);

 return kaweth->linkstate;
}
