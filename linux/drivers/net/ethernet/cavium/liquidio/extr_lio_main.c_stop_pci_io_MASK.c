#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  (* disable_interrupt ) (struct octeon_device*,int /*<<< orphan*/ ) ;} ;
struct octeon_device {int flags; TYPE_2__* pci_dev; int /*<<< orphan*/  status; TYPE_1__ fn_list; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int LIO_FLAG_MSI_ENABLED ; 
 int /*<<< orphan*/  OCTEON_ALL_INTR ; 
 int /*<<< orphan*/  OCT_DEV_IN_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct octeon_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct octeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct octeon_device *oct)
{
	/* No more instructions will be forwarded. */
	FUNC0(&oct->status, OCT_DEV_IN_RESET);

	FUNC5(oct->pci_dev);

	/* Disable interrupts  */
	oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

	FUNC7(oct);

	/* Release the interrupt line */
	FUNC3(oct->pci_dev->irq, oct);

	if (oct->flags & LIO_FLAG_MSI_ENABLED)
		FUNC6(oct->pci_dev);

	FUNC2(&oct->pci_dev->dev, "Device state is now %s\n",
		FUNC4(&oct->status));

	/* making it a common function for all OCTEON models */
	FUNC1(oct->pci_dev);
}