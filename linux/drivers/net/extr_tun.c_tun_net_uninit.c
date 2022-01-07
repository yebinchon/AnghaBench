
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int tun_detach_all (struct net_device*) ;

__attribute__((used)) static void tun_net_uninit(struct net_device *dev)
{
 tun_detach_all(dev);
}
