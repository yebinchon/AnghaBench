#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct pcmcia_device {int /*<<< orphan*/  open; int /*<<< orphan*/  dev; } ;
struct net_device {unsigned int base_addr; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; } ;
struct axnet_dev {int link_status; int /*<<< orphan*/  watchdog; struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 scalar_t__ EN0_ISR ; 
 int ENODEV ; 
 scalar_t__ HZ ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 struct axnet_dev* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ei_irq_wrapper ; 
 int /*<<< orphan*/  ei_watchdog ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct pcmcia_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
    int ret;
    struct axnet_dev *info = FUNC0(dev);
    struct pcmcia_device *link = info->p_dev;
    unsigned int nic_base = dev->base_addr;
    
    FUNC2(&link->dev, "axnet_open('%s')\n", dev->name);

    if (!FUNC5(link))
	return -ENODEV;

    FUNC4(0xFF, nic_base + EN0_ISR); /* Clear bogus intr. */
    ret = FUNC6(dev->irq, ei_irq_wrapper, IRQF_SHARED, "axnet_cs", dev);
    if (ret)
	    return ret;

    link->open++;

    info->link_status = 0x00;
    FUNC7(&info->watchdog, ei_watchdog, 0);
    FUNC3(&info->watchdog, jiffies + HZ);

    return FUNC1(dev);
}