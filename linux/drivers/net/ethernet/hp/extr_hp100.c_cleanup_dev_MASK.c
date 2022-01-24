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
struct net_device {int /*<<< orphan*/  base_addr; } ;
struct hp100_private {int mode; scalar_t__ mem_ptr_virt; int /*<<< orphan*/  page_vaddr_algn; int /*<<< orphan*/  pci_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  HP100_REGION_SIZE ; 
 scalar_t__ MAX_RINGSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct hp100_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct net_device *d)
{
	struct hp100_private *p = FUNC2(d);

	FUNC5(d);
	FUNC4(d->base_addr, HP100_REGION_SIZE);

	if (p->mode == 1)	/* busmaster */
		FUNC3(p->pci_dev, MAX_RINGSIZE + 0x0f,
				    p->page_vaddr_algn,
				    FUNC6(d, p->page_vaddr_algn));
	if (p->mem_ptr_virt)
		FUNC1(p->mem_ptr_virt);

	FUNC0(d);
}