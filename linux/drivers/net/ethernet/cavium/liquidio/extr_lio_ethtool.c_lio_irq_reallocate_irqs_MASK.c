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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int /*<<< orphan*/  (* enable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* disable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;} ;
struct octeon_device {int num_msix_irqs; TYPE_1__ fn_list; TYPE_2__* pci_dev; int /*<<< orphan*/ * irq_name_storage; int /*<<< orphan*/ * msix_entries; scalar_t__ vector; struct octeon_device* ioq_vector; scalar_t__ msix_on; } ;
struct msix_entry {int /*<<< orphan*/  vector; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
 scalar_t__ FUNC0 (struct octeon_device*) ; 
 scalar_t__ FUNC1 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct octeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC12(struct octeon_device *oct, uint32_t num_ioqs)
{
	struct msix_entry *msix_entries;
	int num_msix_irqs = 0;
	int i;

	if (!oct->msix_on)
		return 0;

	/* Disable the input and output queues now. No more packets will
	 * arrive from Octeon.
	 */
	oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

	if (oct->msix_on) {
		if (FUNC0(oct))
			num_msix_irqs = oct->num_msix_irqs - 1;
		else if (FUNC1(oct))
			num_msix_irqs = oct->num_msix_irqs;

		msix_entries = (struct msix_entry *)oct->msix_entries;
		for (i = 0; i < num_msix_irqs; i++) {
			if (oct->ioq_vector[i].vector) {
				/* clear the affinity_cpumask */
				FUNC5(msix_entries[i].vector,
						      NULL);
				FUNC4(msix_entries[i].vector,
					 &oct->ioq_vector[i]);
				oct->ioq_vector[i].vector = 0;
			}
		}

		/* non-iov vector's argument is oct struct */
		if (FUNC0(oct))
			FUNC4(msix_entries[i].vector, oct);

		FUNC9(oct->pci_dev);
		FUNC6(oct->msix_entries);
		oct->msix_entries = NULL;
	}

	FUNC6(oct->irq_name_storage);
	oct->irq_name_storage = NULL;

	if (FUNC7(oct, num_ioqs)) {
		FUNC2(&oct->pci_dev->dev, "OCTEON: ioq vector allocation failed\n");
		return -1;
	}

	if (FUNC8(oct, num_ioqs)) {
		FUNC3(&oct->pci_dev->dev, "Setup interrupt failed\n");
		return -1;
	}

	/* Enable Octeon device interrupts */
	oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);

	return 0;
}