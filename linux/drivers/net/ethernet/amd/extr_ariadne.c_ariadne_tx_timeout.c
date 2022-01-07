
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ base_addr; } ;
struct Am79C960 {int RDP; } ;


 int ariadne_reset (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int ) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static void ariadne_tx_timeout(struct net_device *dev)
{
 volatile struct Am79C960 *lance = (struct Am79C960 *)dev->base_addr;

 netdev_err(dev, "transmit timed out, status %04x, resetting\n",
     lance->RDP);
 ariadne_reset(dev);
 netif_wake_queue(dev);
}
