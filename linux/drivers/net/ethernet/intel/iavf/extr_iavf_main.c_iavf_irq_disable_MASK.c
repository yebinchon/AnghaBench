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
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int num_msix_vectors; TYPE_1__* msix_entries; struct iavf_hw hw; } ;
struct TYPE_2__ {int /*<<< orphan*/  vector; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iavf_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct iavf_adapter *adapter)
{
	int i;
	struct iavf_hw *hw = &adapter->hw;

	if (!adapter->msix_entries)
		return;

	for (i = 1; i < adapter->num_msix_vectors; i++) {
		FUNC3(hw, FUNC0(i - 1), 0);
		FUNC2(adapter->msix_entries[i].vector);
	}
	FUNC1(hw);
}