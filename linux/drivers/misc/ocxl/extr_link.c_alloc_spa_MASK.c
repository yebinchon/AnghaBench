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
struct TYPE_2__ {int /*<<< orphan*/  fault_work; } ;
struct spa {struct ocxl_process_element* spa_mem; scalar_t__ spa_order; TYPE_1__ xsl_fault; int /*<<< orphan*/  pe_tree; int /*<<< orphan*/  spa_lock; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ocxl_process_element {int dummy; } ;
struct ocxl_link {struct spa* spa; int /*<<< orphan*/  dev; int /*<<< orphan*/  bus; int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SHIFT ; 
 scalar_t__ SPA_SPA_SIZE_LOG ; 
 int __GFP_ZERO ; 
 scalar_t__ FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct spa*) ; 
 struct spa* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ocxl_process_element*) ; 
 int /*<<< orphan*/  xsl_fault_handler_bh ; 

__attribute__((used)) static int FUNC8(struct pci_dev *dev, struct ocxl_link *link)
{
	struct spa *spa;

	spa = FUNC5(sizeof(struct spa), GFP_KERNEL);
	if (!spa)
		return -ENOMEM;

	FUNC6(&spa->spa_lock);
	FUNC0(&spa->pe_tree, GFP_KERNEL);
	FUNC1(&spa->xsl_fault.fault_work, xsl_fault_handler_bh);

	spa->spa_order = SPA_SPA_SIZE_LOG - PAGE_SHIFT;
	spa->spa_mem = (struct ocxl_process_element *)
		FUNC2(GFP_KERNEL | __GFP_ZERO, spa->spa_order);
	if (!spa->spa_mem) {
		FUNC3(&dev->dev, "Can't allocate Shared Process Area\n");
		FUNC4(spa);
		return -ENOMEM;
	}
	FUNC7("Allocated SPA for %x:%x:%x at %p\n", link->domain, link->bus,
		link->dev, spa->spa_mem);

	link->spa = spa;
	return 0;
}