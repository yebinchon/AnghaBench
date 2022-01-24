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
struct igb_adapter {int num_q_vectors; int flags; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int IGB_FLAG_HAS_MSI ; 
 int IGB_FLAG_HAS_MSIX ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct igb_adapter *adapter)
{
	int v_idx = adapter->num_q_vectors;

	if (adapter->flags & IGB_FLAG_HAS_MSIX)
		FUNC2(adapter->pdev);
	else if (adapter->flags & IGB_FLAG_HAS_MSI)
		FUNC1(adapter->pdev);

	while (v_idx--)
		FUNC0(adapter, v_idx);
}