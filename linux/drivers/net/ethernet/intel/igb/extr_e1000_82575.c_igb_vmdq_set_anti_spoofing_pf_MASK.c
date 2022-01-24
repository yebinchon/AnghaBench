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
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int E1000_DTXSWC ; 
 int E1000_DTXSWC_MAC_SPOOF_MASK ; 
 int E1000_DTXSWC_VLAN_SPOOF_MASK ; 
 int E1000_TXSWC ; 
 int MAX_NUM_VFS ; 
#define  e1000_82576 130 
#define  e1000_i350 129 
#define  e1000_i354 128 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

void FUNC3(struct e1000_hw *hw, bool enable, int pf)
{
	u32 reg_val, reg_offset;

	switch (hw->mac.type) {
	case e1000_82576:
		reg_offset = E1000_DTXSWC;
		break;
	case e1000_i350:
	case e1000_i354:
		reg_offset = E1000_TXSWC;
		break;
	default:
		return;
	}

	reg_val = FUNC1(reg_offset);
	if (enable) {
		reg_val |= (E1000_DTXSWC_MAC_SPOOF_MASK |
			     E1000_DTXSWC_VLAN_SPOOF_MASK);
		/* The PF can spoof - it has to in order to
		 * support emulation mode NICs
		 */
		reg_val ^= (FUNC0(pf) | FUNC0(pf + MAX_NUM_VFS));
	} else {
		reg_val &= ~(E1000_DTXSWC_MAC_SPOOF_MASK |
			     E1000_DTXSWC_VLAN_SPOOF_MASK);
	}
	FUNC2(reg_offset, reg_val);
}