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
typedef  int u32 ;
struct iavf_hw {int dummy; } ;
struct iavf_adapter {int num_msix_vectors; struct iavf_hw hw; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int IAVF_VFINT_DYN_CTLN1_INTENA_MASK ; 
 int IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_hw*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct iavf_adapter *adapter, u32 mask)
{
	struct iavf_hw *hw = &adapter->hw;
	int i;

	for (i = 1; i < adapter->num_msix_vectors; i++) {
		if (mask & FUNC0(i - 1)) {
			FUNC2(hw, FUNC1(i - 1),
			     IAVF_VFINT_DYN_CTLN1_INTENA_MASK |
			     IAVF_VFINT_DYN_CTLN1_ITR_INDX_MASK);
		}
	}
}