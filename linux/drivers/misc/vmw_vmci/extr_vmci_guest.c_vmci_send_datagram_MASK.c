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
struct vmci_datagram {int dummy; } ;
struct TYPE_2__ {scalar_t__ iobase; } ;

/* Variables and functions */
 scalar_t__ VMCI_DATA_OUT_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct vmci_datagram*) ; 
 int VMCI_ERROR_INVALID_ARGS ; 
 int VMCI_ERROR_UNAVAILABLE ; 
 scalar_t__ VMCI_RESULT_LOW_ADDR ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,struct vmci_datagram*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 TYPE_1__* vmci_dev_g ; 
 int /*<<< orphan*/  vmci_dev_spinlock ; 

int FUNC5(struct vmci_datagram *dg)
{
	unsigned long flags;
	int result;

	/* Check args. */
	if (dg == NULL)
		return VMCI_ERROR_INVALID_ARGS;

	/*
	 * Need to acquire spinlock on the device because the datagram
	 * data may be spread over multiple pages and the monitor may
	 * interleave device user rpc calls from multiple
	 * VCPUs. Acquiring the spinlock precludes that
	 * possibility. Disabling interrupts to avoid incoming
	 * datagrams during a "rep out" and possibly landing up in
	 * this function.
	 */
	FUNC3(&vmci_dev_spinlock, flags);

	if (vmci_dev_g) {
		FUNC2(vmci_dev_g->iobase + VMCI_DATA_OUT_ADDR,
			     dg, FUNC0(dg));
		result = FUNC1(vmci_dev_g->iobase + VMCI_RESULT_LOW_ADDR);
	} else {
		result = VMCI_ERROR_UNAVAILABLE;
	}

	FUNC4(&vmci_dev_spinlock, flags);

	return result;
}