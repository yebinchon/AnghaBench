#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ngene {TYPE_2__* pci_dev; scalar_t__ msi_enabled; TYPE_1__* channel; int /*<<< orphan*/  cmd_mutex; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;
struct TYPE_3__ {int /*<<< orphan*/  i2c_adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  NGENE_COMMAND ; 
 int /*<<< orphan*/  NGENE_COMMAND_HI ; 
 int /*<<< orphan*/  NGENE_EVENT ; 
 int /*<<< orphan*/  NGENE_EVENT_HI ; 
 int /*<<< orphan*/  NGENE_INT_ENABLE ; 
 int /*<<< orphan*/  NGENE_STATUS ; 
 int /*<<< orphan*/  NGENE_STATUS_HI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ngene*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC5(struct ngene *dev)
{
	FUNC2(&dev->cmd_mutex);
	FUNC1(&(dev->channel[0].i2c_adapter));
	FUNC1(&(dev->channel[1].i2c_adapter));
	FUNC3(0, NGENE_INT_ENABLE);
	FUNC3(0, NGENE_COMMAND);
	FUNC3(0, NGENE_COMMAND_HI);
	FUNC3(0, NGENE_STATUS);
	FUNC3(0, NGENE_STATUS_HI);
	FUNC3(0, NGENE_EVENT);
	FUNC3(0, NGENE_EVENT_HI);
	FUNC0(dev->pci_dev->irq, dev);
#ifdef CONFIG_PCI_MSI
	if (dev->msi_enabled)
		pci_disable_msi(dev->pci_dev);
#endif
}