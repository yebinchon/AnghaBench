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
struct pci_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct ocxl_fn {scalar_t__* bar_used; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_dev*,int) ; 
 struct pci_dev* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ocxl_fn *fn, int bar)
{
	struct pci_dev *dev = FUNC2(fn->dev.parent);
	int idx;

	if (bar != 0 && bar != 2 && bar != 4)
		return;

	idx = bar >> 1;
	if (--fn->bar_used[idx] == 0)
		FUNC1(dev, bar);
	FUNC0(fn->bar_used[idx] < 0);
}