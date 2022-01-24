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
struct adapter {int flags; TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int CXGB4VF_USING_MSIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter)
{
	/*
	 * Free interrupt resources.
	 */
	if (adapter->flags & CXGB4VF_USING_MSIX)
		FUNC1(adapter);
	else
		FUNC0(adapter->pdev->irq, adapter);

	/*
	 * Wait for NAPI handlers to finish.
	 */
	FUNC2(adapter);
}