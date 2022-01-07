
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; int irq; } ;
struct board_info {int phy_poll; int mii; scalar_t__ dbug_cnt; int dev; } ;


 int DM9000_GPR ;
 int EAGAIN ;
 unsigned int IRQF_SHARED ;
 unsigned int IRQF_TRIGGER_NONE ;
 int dev_dbg (int ,char*,int ) ;
 int dev_warn (int ,char*) ;
 int dm9000_init_dm9000 (struct net_device*) ;
 int dm9000_interrupt ;
 int dm9000_unmask_interrupts (struct board_info*) ;
 int iow (struct board_info*,int ,int ) ;
 unsigned int irq_get_trigger_type (int ) ;
 int mdelay (int) ;
 int mii_check_media (int *,int ,int) ;
 struct board_info* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_ifup (struct board_info*) ;
 int netif_msg_link (struct board_info*) ;
 int netif_start_queue (struct net_device*) ;
 scalar_t__ request_irq (int ,int ,unsigned int,int ,struct net_device*) ;
 int schedule_delayed_work (int *,int) ;

__attribute__((used)) static int
dm9000_open(struct net_device *dev)
{
 struct board_info *db = netdev_priv(dev);
 unsigned int irq_flags = irq_get_trigger_type(dev->irq);

 if (netif_msg_ifup(db))
  dev_dbg(db->dev, "enabling %s\n", dev->name);




 if (irq_flags == IRQF_TRIGGER_NONE)
  dev_warn(db->dev, "WARNING: no IRQ resource flags set.\n");

 irq_flags |= IRQF_SHARED;


 iow(db, DM9000_GPR, 0);
 mdelay(1);


 dm9000_init_dm9000(dev);

 if (request_irq(dev->irq, dm9000_interrupt, irq_flags, dev->name, dev))
  return -EAGAIN;



 dm9000_unmask_interrupts(db);


 db->dbug_cnt = 0;

 mii_check_media(&db->mii, netif_msg_link(db), 1);
 netif_start_queue(dev);


 schedule_delayed_work(&db->phy_poll, 1);

 return 0;
}
