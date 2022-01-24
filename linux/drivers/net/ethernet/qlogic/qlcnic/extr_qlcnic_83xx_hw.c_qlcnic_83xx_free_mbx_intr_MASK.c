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
typedef  size_t u32 ;
struct qlcnic_adapter {int flags; TYPE_2__* msix_entries; TYPE_1__* ahw; } ;
struct TYPE_4__ {int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {size_t num_msix; } ;

/* Variables and functions */
 int QLCNIC_MSIX_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(struct qlcnic_adapter *adapter)
{
	u32 num_msix;

	if (!(adapter->flags & QLCNIC_MSIX_ENABLED))
		FUNC3(adapter);

	FUNC2(adapter);

	if (adapter->flags & QLCNIC_MSIX_ENABLED)
		num_msix = adapter->ahw->num_msix - 1;
	else
		num_msix = 0;

	FUNC1(20);

	if (adapter->msix_entries) {
		FUNC4(adapter->msix_entries[num_msix].vector);
		FUNC0(adapter->msix_entries[num_msix].vector, adapter);
	}
}