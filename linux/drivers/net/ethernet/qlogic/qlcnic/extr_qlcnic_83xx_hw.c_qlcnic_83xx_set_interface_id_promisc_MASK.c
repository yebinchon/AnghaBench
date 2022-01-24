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
typedef  int u32 ;
struct qlcnic_adapter {int rx_mac_learn; TYPE_1__* recv_ctx; } ;
struct TYPE_2__ {int context_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,int*) ; 
 scalar_t__ FUNC2 (struct qlcnic_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_adapter*) ; 

__attribute__((used)) static void FUNC4(struct qlcnic_adapter *adapter,
						 u32 *interface_id)
{
	if (FUNC2(adapter)) {
		FUNC0(adapter);
		FUNC1(adapter, interface_id);
		adapter->rx_mac_learn = true;
	} else {
		if (!FUNC3(adapter))
			*interface_id = adapter->recv_ctx->context_id << 16;
	}
}