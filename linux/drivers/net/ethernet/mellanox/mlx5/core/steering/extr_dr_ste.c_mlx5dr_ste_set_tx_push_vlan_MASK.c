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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  DR_STE_ACTION_TYPE_PUSH_VLAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  action_type ; 
 int /*<<< orphan*/  encap_pointer_vlan_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ste_sx_transmit ; 

void FUNC2(u8 *hw_ste_p, u32 vlan_hdr,
				 bool go_back)
{
	FUNC0(ste_sx_transmit, hw_ste_p, action_type,
		 DR_STE_ACTION_TYPE_PUSH_VLAN);
	FUNC0(ste_sx_transmit, hw_ste_p, encap_pointer_vlan_data, vlan_hdr);
	/* Due to HW limitation we need to set this bit, otherwise reforamt +
	 * push vlan will not work.
	 */
	if (go_back)
		FUNC1(hw_ste_p);
}