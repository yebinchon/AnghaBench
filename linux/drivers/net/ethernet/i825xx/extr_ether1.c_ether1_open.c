
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;


 int EAGAIN ;
 scalar_t__ ether1_init_for_open (struct net_device*) ;
 int ether1_interrupt ;
 int free_irq (int ,struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,int ,char*,struct net_device*) ;

__attribute__((used)) static int
ether1_open (struct net_device *dev)
{
 if (request_irq(dev->irq, ether1_interrupt, 0, "ether1", dev))
  return -EAGAIN;

 if (ether1_init_for_open (dev)) {
  free_irq (dev->irq, dev);
  return -EAGAIN;
 }

 netif_start_queue(dev);

 return 0;
}
