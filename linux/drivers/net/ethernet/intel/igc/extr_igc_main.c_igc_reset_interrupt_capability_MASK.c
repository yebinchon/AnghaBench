#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct igc_adapter {int num_q_vectors; int flags; int /*<<< orphan*/  pdev; int /*<<< orphan*/ * msix_entries; } ;

/* Variables and functions */
 int IGC_FLAG_HAS_MSI ; 
 int /*<<< orphan*/  FUNC0 (struct igc_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct igc_adapter *adapter)
{
	int v_idx = adapter->num_q_vectors;

	if (adapter->msix_entries) {
		FUNC3(adapter->pdev);
		FUNC1(adapter->msix_entries);
		adapter->msix_entries = NULL;
	} else if (adapter->flags & IGC_FLAG_HAS_MSI) {
		FUNC2(adapter->pdev);
	}

	while (v_idx--)
		FUNC0(adapter, v_idx);
}