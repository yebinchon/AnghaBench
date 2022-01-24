#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct net_device {int dummy; } ;
struct linux_prom_registers {int which_io; } ;
struct happy_meal {int happy_flags; struct platform_device* happy_dev; } ;
struct ethtool_drvinfo {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  version; int /*<<< orphan*/  driver; } ;

/* Variables and functions */
 int HFLAG_PCI ; 
 struct happy_meal* FUNC0 (struct net_device*) ; 
 struct linux_prom_registers* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev, struct ethtool_drvinfo *info)
{
	struct happy_meal *hp = FUNC0(dev);

	FUNC4(info->driver, "sunhme", sizeof(info->driver));
	FUNC4(info->version, "2.02", sizeof(info->version));
	if (hp->happy_flags & HFLAG_PCI) {
		struct pci_dev *pdev = hp->happy_dev;
		FUNC4(info->bus_info, FUNC2(pdev), sizeof(info->bus_info));
	}
#ifdef CONFIG_SBUS
	else {
		const struct linux_prom_registers *regs;
		struct platform_device *op = hp->happy_dev;
		regs = of_get_property(op->dev.of_node, "regs", NULL);
		if (regs)
			snprintf(info->bus_info, sizeof(info->bus_info),
				"SBUS:%d",
				regs->which_io);
	}
#endif
}