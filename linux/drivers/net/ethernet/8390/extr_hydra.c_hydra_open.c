
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int __ei_open (struct net_device*) ;

__attribute__((used)) static int hydra_open(struct net_device *dev)
{
    __ei_open(dev);
    return 0;
}
