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
struct net_device {int /*<<< orphan*/  irq; int /*<<< orphan*/  phydev; int /*<<< orphan*/  name; } ;
struct ax_device {int running; int /*<<< orphan*/  mii_bus; int /*<<< orphan*/  irqflags; TYPE_1__* plat; } ;
struct TYPE_2__ {scalar_t__ check_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  ax_ei_interrupt ; 
 int /*<<< orphan*/  ax_ei_interrupt_filtered ; 
 int FUNC0 (struct net_device*) ; 
 int FUNC1 (struct net_device*) ; 
 int FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 
 struct ax_device* FUNC11 (struct net_device*) ; 

__attribute__((used)) static int FUNC12(struct net_device *dev)
{
	struct ax_device *ax = FUNC11(dev);
	int ret;

	FUNC7(dev, "open\n");

	ret = FUNC1(dev);
	if (ret)
		goto failed_mii;

	if (ax->plat->check_irq)
		ret = FUNC10(dev->irq, ax_ei_interrupt_filtered,
				  ax->irqflags, dev->name, dev);
	else
		ret = FUNC10(dev->irq, ax_ei_interrupt, ax->irqflags,
				  dev->name, dev);
	if (ret)
		goto failed_request_irq;

	/* turn the phy on (if turned off) */
	FUNC3(dev, 1);

	ret = FUNC2(dev);
	if (ret)
		goto failed_mii_probe;
	FUNC9(dev->phydev);

	ret = FUNC0(dev);
	if (ret)
		goto failed_ax_ei_open;

	ax->running = 1;

	return 0;

 failed_ax_ei_open:
	FUNC8(dev->phydev);
 failed_mii_probe:
	FUNC3(dev, 0);
	FUNC4(dev->irq, dev);
 failed_request_irq:
	/* unregister mdiobus */
	FUNC6(ax->mii_bus);
	FUNC5(ax->mii_bus);
 failed_mii:
	return ret;
}