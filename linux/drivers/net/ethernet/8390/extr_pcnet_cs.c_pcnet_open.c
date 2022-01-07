
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcnet_dev {int link_status; int watchdog; int eth_phy; int phy_id; struct pcmcia_device* p_dev; } ;
struct pcmcia_device {int open; int dev; } ;
struct net_device {unsigned int base_addr; int name; int irq; } ;


 scalar_t__ EN0_ISR ;
 int ENODEV ;
 scalar_t__ HZ ;
 int IRQF_SHARED ;
 struct pcnet_dev* PRIV (struct net_device*) ;
 int dev_dbg (int *,char*,int ) ;
 int ei_irq_wrapper ;
 int ei_open (struct net_device*) ;
 int ei_watchdog ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int request_irq (int ,int ,int ,int ,struct net_device*) ;
 int set_misc_reg (struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int pcnet_open(struct net_device *dev)
{
    int ret;
    struct pcnet_dev *info = PRIV(dev);
    struct pcmcia_device *link = info->p_dev;
    unsigned int nic_base = dev->base_addr;

    dev_dbg(&link->dev, "pcnet_open('%s')\n", dev->name);

    if (!pcmcia_dev_present(link))
 return -ENODEV;

    set_misc_reg(dev);

    outb_p(0xFF, nic_base + EN0_ISR);
    ret = request_irq(dev->irq, ei_irq_wrapper, IRQF_SHARED, dev->name, dev);
    if (ret)
     return ret;

    link->open++;

    info->phy_id = info->eth_phy;
    info->link_status = 0x00;
    timer_setup(&info->watchdog, ei_watchdog, 0);
    mod_timer(&info->watchdog, jiffies + HZ);

    return ei_open(dev);
}
