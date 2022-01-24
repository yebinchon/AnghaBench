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
typedef  int u64 ;
struct ehea_eqe {scalar_t__ entry; } ;
struct ehea_adapter {TYPE_1__* neq; int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_handle; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NELR_ADAPTER_MALFUNC ; 
 int /*<<< orphan*/  NELR_PORTSTATE_CHG ; 
 int /*<<< orphan*/  NELR_PORT_MALFUNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_adapter*,scalar_t__) ; 
 struct ehea_eqe* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(unsigned long data)
{
	struct ehea_adapter *adapter = (struct ehea_adapter *)data;
	struct ehea_eqe *eqe;
	u64 event_mask;

	eqe = FUNC3(adapter->neq);
	FUNC4("eqe=%p\n", eqe);

	while (eqe) {
		FUNC4("*eqe=%lx\n", (unsigned long) eqe->entry);
		FUNC2(adapter, eqe->entry);
		eqe = FUNC3(adapter->neq);
		FUNC4("next eqe=%p\n", eqe);
	}

	event_mask = FUNC0(NELR_PORTSTATE_CHG, 1)
		   | FUNC0(NELR_ADAPTER_MALFUNC, 1)
		   | FUNC0(NELR_PORT_MALFUNC, 1);

	FUNC1(adapter->handle,
			    adapter->neq->fw_handle, event_mask);
}