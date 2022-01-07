
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int open; int dev; } ;
struct net_device {unsigned int base_addr; int irq; int name; } ;
struct axnet_dev {int link_status; int watchdog; struct pcmcia_device* p_dev; } ;


 scalar_t__ EN0_ISR ;
 int ENODEV ;
 scalar_t__ HZ ;
 int IRQF_SHARED ;
 struct axnet_dev* PRIV (struct net_device*) ;
 int ax_open (struct net_device*) ;
 int dev_dbg (int *,char*,int ) ;
 int ei_irq_wrapper ;
 int ei_watchdog ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int outb_p (int,scalar_t__) ;
 int pcmcia_dev_present (struct pcmcia_device*) ;
 int request_irq (int ,int ,int ,char*,struct net_device*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int axnet_open(struct net_device *dev)
{
    int ret;
    struct axnet_dev *info = PRIV(dev);
    struct pcmcia_device *link = info->p_dev;
    unsigned int nic_base = dev->base_addr;

    dev_dbg(&link->dev, "axnet_open('%s')\n", dev->name);

    if (!pcmcia_dev_present(link))
 return -ENODEV;

    outb_p(0xFF, nic_base + EN0_ISR);
    ret = request_irq(dev->irq, ei_irq_wrapper, IRQF_SHARED, "axnet_cs", dev);
    if (ret)
     return ret;

    link->open++;

    info->link_status = 0x00;
    timer_setup(&info->watchdog, ei_watchdog, 0);
    mod_timer(&info->watchdog, jiffies + HZ);

    return ax_open(dev);
}
