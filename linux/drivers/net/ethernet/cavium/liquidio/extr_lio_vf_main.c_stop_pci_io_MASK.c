#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  (* disable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;} ;
struct octeon_device {int ifcount; int num_msix_irqs; TYPE_3__* pci_dev; int /*<<< orphan*/  status; int /*<<< orphan*/ * msix_entries; int /*<<< orphan*/ * ioq_vector; scalar_t__ msix_on; TYPE_2__ fn_list; TYPE_1__* props; } ;
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
 int /*<<< orphan*/  OCT_DEV_IN_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct octeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(struct octeon_device *oct)
{
	struct msix_entry *msix_entries;
	int i;

	/* No more instructions will be forwarded. */
	FUNC0(&oct->status, OCT_DEV_IN_RESET);

	for (i = 0; i < oct->ifcount; i++)
		FUNC7(oct->props[i].netdev);

	/* Disable interrupts  */
	oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

	FUNC11(oct);
	if (oct->msix_on) {
		msix_entries = (struct msix_entry *)oct->msix_entries;
		for (i = 0; i < oct->num_msix_irqs; i++) {
			/* clear the affinity_cpumask */
			FUNC4(msix_entries[i].vector,
					      NULL);
			FUNC3(msix_entries[i].vector,
				 &oct->ioq_vector[i]);
		}
		FUNC10(oct->pci_dev);
		FUNC5(oct->msix_entries);
		oct->msix_entries = NULL;
		FUNC8(oct);
	}
	FUNC2(&oct->pci_dev->dev, "Device state is now %s\n",
		FUNC6(&oct->status));

	/* making it a common function for all OCTEON models */
	FUNC1(oct->pci_dev);

	FUNC9(oct->pci_dev);
}