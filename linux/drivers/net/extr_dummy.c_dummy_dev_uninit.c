
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dstats; } ;


 int free_percpu (int ) ;

__attribute__((used)) static void dummy_dev_uninit(struct net_device *dev)
{
 free_percpu(dev->dstats);
}
