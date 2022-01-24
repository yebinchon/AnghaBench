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
struct octeon_device {TYPE_2__* pci_dev; TYPE_1__* mmio; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ start; int /*<<< orphan*/  hw_addr; scalar_t__ done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 

__attribute__((used)) static inline void FUNC3(struct octeon_device *oct, int baridx)
{
	FUNC0(&oct->pci_dev->dev, "Freeing PCI mapped regions for Bar%d\n",
		baridx);

	if (oct->mmio[baridx].done)
		FUNC1(oct->mmio[baridx].hw_addr);

	if (oct->mmio[baridx].start)
		FUNC2(oct->pci_dev, baridx * 2);
}