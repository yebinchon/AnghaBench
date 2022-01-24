#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_controller {TYPE_3__* bus; int /*<<< orphan*/  controller_ops; struct cxl_afu* private_data; int /*<<< orphan*/ * cfg_data; int /*<<< orphan*/ * cfg_addr; int /*<<< orphan*/ * ops; struct device* parent; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct cxl_afu {struct pci_controller* phb; TYPE_2__* adapter; int /*<<< orphan*/  crs_num; } ;
struct TYPE_7__ {int /*<<< orphan*/  bridge; } ;
struct TYPE_5__ {struct device* parent; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  cxl_pci_controller_ops ; 
 int /*<<< orphan*/  cxl_pcie_pci_ops ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 struct pci_controller* FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  pcibios_free_controller_deferred ; 
 int /*<<< orphan*/  FUNC4 (struct pci_controller*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct cxl_afu *afu)
{
	struct pci_controller *phb;
	struct device_node *vphb_dn;
	struct device *parent;

	/*
	 * If there are no AFU configuration records we won't have anything to
	 * expose under the vPHB, so skip creating one, returning success since
	 * this is still a valid case. This will also opt us out of EEH
	 * handling since we won't have anything special to do if there are no
	 * kernel drivers attached to the vPHB, and EEH handling is not yet
	 * supported in the peer model.
	 */
	if (!afu->crs_num)
		return 0;

	/* The parent device is the adapter. Reuse the device node of
	 * the adapter.
	 * We don't seem to care what device node is used for the vPHB,
	 * but tools such as lsvpd walk up the device parents looking
	 * for a valid location code, so we might as well show devices
	 * attached to the adapter as being located on that adapter.
	 */
	parent = afu->adapter->dev.parent;
	vphb_dn = parent->of_node;

	/* Alloc and setup PHB data structure */
	phb = FUNC2(vphb_dn);
	if (!phb)
		return -ENODEV;

	/* Setup parent in sysfs */
	phb->parent = parent;

	/* Setup the PHB using arch provided callback */
	phb->ops = &cxl_pcie_pci_ops;
	phb->cfg_addr = NULL;
	phb->cfg_data = NULL;
	phb->private_data = afu;
	phb->controller_ops = cxl_pci_controller_ops;

	/* Scan the bus */
	FUNC4(phb);
	if (phb->bus == NULL)
		return -ENXIO;

	/* Set release hook on root bus */
	FUNC1(FUNC5(phb->bus->bridge),
				    pcibios_free_controller_deferred,
				    (void *) phb);

	/* Claim resources. This might need some rework as well depending
	 * whether we are doing probe-only or not, like assigning unassigned
	 * resources etc...
	 */
	FUNC3(phb->bus);

	/* Add probed PCI devices to the device model */
	FUNC0(phb->bus);

	afu->phb = phb;

	return 0;
}