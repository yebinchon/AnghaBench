
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int EAGAIN ;
 int ether3_init_for_open (struct net_device*) ;
 int ether3_interrupt ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static int
ether3_open(struct net_device *dev)
{
 if (request_irq(dev->irq, ether3_interrupt, 0, "ether3", dev))
  return -EAGAIN;

 ether3_init_for_open(dev);

 netif_start_queue(dev);

 return 0;
}
