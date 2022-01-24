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
struct qlcnic_hardware_context {int* extra_capability; } ;
struct qlcnic_adapter {int /*<<< orphan*/  state; struct qlcnic_hardware_context* ahw; } ;

/* Variables and functions */
 int QLCNIC_FW_CAPABILITY_2_MULTI_TX ; 
 int /*<<< orphan*/  __QLCNIC_MULTI_TX_UNIQUE ; 
 scalar_t__ FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct qlcnic_adapter *adapter)
{
	struct qlcnic_hardware_context *ahw = adapter->ahw;

	if (FUNC0(adapter) &&
	    (ahw->extra_capability[0] & QLCNIC_FW_CAPABILITY_2_MULTI_TX)) {
		FUNC1(__QLCNIC_MULTI_TX_UNIQUE, &adapter->state);
		return 0;
	} else {
		return 1;
	}
}