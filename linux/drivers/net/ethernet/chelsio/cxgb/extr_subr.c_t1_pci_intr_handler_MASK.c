#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  pdev; } ;
typedef  TYPE_1__ adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_PCICFG_INTR_CAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(adapter_t *adapter)
{
	u32 pcix_cause;

	FUNC0(adapter->pdev, A_PCICFG_INTR_CAUSE, &pcix_cause);

	if (pcix_cause) {
		FUNC1(adapter->pdev, A_PCICFG_INTR_CAUSE,
				       pcix_cause);
		FUNC2(adapter);    /* PCI errors are fatal */
	}
	return 0;
}