#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  SCB2_ADDR ; 
 int /*<<< orphan*/  SCB2_WINDOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  region_fail ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * scb2_ioaddr ; 
 TYPE_1__* scb2_mtd ; 

__attribute__((used)) static void FUNC5(struct pci_dev *dev)
{
	if (!scb2_mtd)
		return;

	/* disable flash writes */
	FUNC3(scb2_mtd, 0, scb2_mtd->size);

	FUNC2(scb2_mtd);
	FUNC1(scb2_mtd);

	FUNC0(scb2_ioaddr);
	scb2_ioaddr = NULL;

	if (!region_fail)
		FUNC4(SCB2_ADDR, SCB2_WINDOW);
}