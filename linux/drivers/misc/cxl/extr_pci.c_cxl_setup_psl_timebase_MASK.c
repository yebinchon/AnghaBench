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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct device_node {int dummy; } ;
struct cxl {int psl_timebase_synced; TYPE_2__* native; } ;
struct TYPE_4__ {TYPE_1__* sl_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* write_timebase_ctrl ) (struct cxl*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CXL_PSL_Control ; 
 int CXL_PSL_Control_tb ; 
 int /*<<< orphan*/  FUNC0 (struct cxl*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 struct device_node* FUNC5 (struct pci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct cxl*) ; 

__attribute__((used)) static void FUNC7(struct cxl *adapter, struct pci_dev *dev)
{
	struct device_node *np;

	adapter->psl_timebase_synced = false;

	if (!(np = FUNC5(dev)))
		return;

	/* Do not fail when CAPP timebase sync is not supported by OPAL */
	FUNC3(np);
	if (! FUNC2(np, "ibm,capp-timebase-sync", NULL)) {
		FUNC4(np);
		FUNC1(&dev->dev, "PSL timebase inactive: OPAL support missing\n");
		return;
	}
	FUNC4(np);

	/*
	 * Setup PSL Timebase Control and Status register
	 * with the recommended Timebase Sync Count value
	 */
	if (adapter->native->sl_ops->write_timebase_ctrl)
		adapter->native->sl_ops->write_timebase_ctrl(adapter);

	/* Enable PSL Timebase */
	FUNC0(adapter, CXL_PSL_Control, 0x0000000000000000);
	FUNC0(adapter, CXL_PSL_Control, CXL_PSL_Control_tb);

	return;
}