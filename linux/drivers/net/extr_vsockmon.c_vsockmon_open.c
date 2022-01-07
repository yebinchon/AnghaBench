
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int module; struct net_device* dev; } ;
struct vsockmon {TYPE_1__ vt; } ;
struct net_device {int dummy; } ;


 int THIS_MODULE ;
 struct vsockmon* netdev_priv (struct net_device*) ;
 int vsock_add_tap (TYPE_1__*) ;

__attribute__((used)) static int vsockmon_open(struct net_device *dev)
{
 struct vsockmon *vsockmon = netdev_priv(dev);

 vsockmon->vt.dev = dev;
 vsockmon->vt.module = THIS_MODULE;
 return vsock_add_tap(&vsockmon->vt);
}
