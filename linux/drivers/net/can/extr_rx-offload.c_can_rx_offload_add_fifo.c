
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct can_rx_offload {int mailbox_read; } ;


 int EINVAL ;
 int can_rx_offload_init_queue (struct net_device*,struct can_rx_offload*,unsigned int) ;

int can_rx_offload_add_fifo(struct net_device *dev, struct can_rx_offload *offload, unsigned int weight)
{
 if (!offload->mailbox_read)
  return -EINVAL;

 return can_rx_offload_init_queue(dev, offload, weight);
}
