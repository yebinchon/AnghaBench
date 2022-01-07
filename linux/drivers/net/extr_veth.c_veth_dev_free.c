
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int lstats; } ;


 int free_percpu (int ) ;
 int veth_free_queues (struct net_device*) ;

__attribute__((used)) static void veth_dev_free(struct net_device *dev)
{
 veth_free_queues(dev);
 free_percpu(dev->lstats);
}
