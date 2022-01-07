
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int irq; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ txing; } ;


 int IRQ2SLOT (int ) ;
 TYPE_1__ ei_status ;
 int hw ;
 int jiffies ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netif_info (struct ei_device*,int ,struct net_device*,char*,int ) ;
 scalar_t__ netif_msg_hw (struct ei_device*) ;
 unsigned char* nubus_slot_addr (int ) ;
 int pr_cont (char*) ;

__attribute__((used)) static void interlan_reset(struct net_device *dev)
{
 unsigned char *target = nubus_slot_addr(IRQ2SLOT(dev->irq));
 struct ei_device *ei_local = netdev_priv(dev);

 netif_info(ei_local, hw, dev, "Need to reset the NS8390 t=%lu...",
     jiffies);
 ei_status.txing = 0;
 target[0xC0000] = 0;
 if (netif_msg_hw(ei_local))
  pr_cont("reset complete\n");
}
