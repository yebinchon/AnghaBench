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
struct iavf_hw {int dummy; } ;
struct iavf_adapter {struct iavf_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iavf_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iavf_adapter*) ; 

void FUNC3(struct iavf_adapter *adapter, bool flush)
{
	struct iavf_hw *hw = &adapter->hw;

	FUNC2(adapter);
	FUNC1(adapter, ~0);

	if (flush)
		FUNC0(hw);
}