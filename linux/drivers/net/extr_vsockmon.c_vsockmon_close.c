
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsockmon {int vt; } ;
struct net_device {int dummy; } ;


 struct vsockmon* netdev_priv (struct net_device*) ;
 int vsock_remove_tap (int *) ;

__attribute__((used)) static int vsockmon_close(struct net_device *dev)
{
 struct vsockmon *vsockmon = netdev_priv(dev);

 return vsock_remove_tap(&vsockmon->vt);
}
