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
struct TYPE_2__ {int match_flags; int /*<<< orphan*/  dst_addr; int /*<<< orphan*/  src_addr; int /*<<< orphan*/  vlan_tci; } ;
struct igb_nfc_filter {int /*<<< orphan*/  action; TYPE_1__ filter; int /*<<< orphan*/  etype_reg_index; } ;
struct igb_adapter {int dummy; } ;

/* Variables and functions */
 int IGB_FILTER_FLAG_DST_MAC_ADDR ; 
 int IGB_FILTER_FLAG_ETHER_TYPE ; 
 int IGB_FILTER_FLAG_SRC_MAC_ADDR ; 
 int IGB_FILTER_FLAG_VLAN_TCI ; 
 int /*<<< orphan*/  IGB_MAC_STATE_SRC_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct igb_adapter *adapter, struct igb_nfc_filter *input)
{
	if (input->filter.match_flags & IGB_FILTER_FLAG_ETHER_TYPE)
		FUNC0(adapter,
					    input->etype_reg_index);

	if (input->filter.match_flags & IGB_FILTER_FLAG_VLAN_TCI)
		FUNC1(adapter,
					   FUNC3(input->filter.vlan_tci));

	if (input->filter.match_flags & IGB_FILTER_FLAG_SRC_MAC_ADDR)
		FUNC2(adapter, input->filter.src_addr,
					    input->action,
					    IGB_MAC_STATE_SRC_ADDR);

	if (input->filter.match_flags & IGB_FILTER_FLAG_DST_MAC_ADDR)
		FUNC2(adapter, input->filter.dst_addr,
					    input->action, 0);

	return 0;
}