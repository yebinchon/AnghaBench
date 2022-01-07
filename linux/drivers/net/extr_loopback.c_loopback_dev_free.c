
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int lstats; } ;
struct TYPE_2__ {int * loopback_dev; } ;


 TYPE_1__* dev_net (struct net_device*) ;
 int free_percpu (int ) ;

__attribute__((used)) static void loopback_dev_free(struct net_device *dev)
{
 dev_net(dev)->loopback_dev = ((void*)0);
 free_percpu(dev->lstats);
}
