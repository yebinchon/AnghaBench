
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int real_num_rx_queues; } ;


 int smp_processor_id () ;

__attribute__((used)) static int veth_select_rxq(struct net_device *dev)
{
 return smp_processor_id() % dev->real_num_rx_queues;
}
