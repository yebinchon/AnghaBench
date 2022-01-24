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
struct net_device {unsigned int base_addr; } ;
struct local_info {struct pcmcia_device* p_dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  XIRCREG1_IMR0 ; 
 int /*<<< orphan*/  XIRCREG4_GPR1 ; 
 int /*<<< orphan*/  XIRCREG_CR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,struct net_device*) ; 
 struct local_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 

__attribute__((used)) static int
FUNC5(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;
    struct local_info *lp = FUNC3(dev);
    struct pcmcia_device *link = lp->p_dev;

    FUNC2(&link->dev, "do_stop(%p)\n", dev);

    if (!link)
	return -ENODEV;

    FUNC4(dev);

    FUNC1(0);
    FUNC0(XIRCREG_CR, 0);  /* disable interrupts */
    FUNC1(0x01);
    FUNC0(XIRCREG1_IMR0, 0x00); /* forbid all ints */
    FUNC1(4);
    FUNC0(XIRCREG4_GPR1, 0);	/* clear bit 0: power down */
    FUNC1(0);

    link->open--;
    return 0;
}