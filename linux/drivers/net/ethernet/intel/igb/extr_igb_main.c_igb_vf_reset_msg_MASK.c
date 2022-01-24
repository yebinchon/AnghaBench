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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {TYPE_1__* vf_data; struct e1000_hw hw; } ;
struct TYPE_2__ {unsigned char* vf_mac_addresses; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 int /*<<< orphan*/  E1000_VFRE ; 
 int /*<<< orphan*/  E1000_VFTE ; 
 size_t E1000_VF_RESET ; 
 size_t E1000_VT_MSGTYPE_ACK ; 
 size_t E1000_VT_MSGTYPE_NACK ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IGB_VF_FLAG_CTS ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct igb_adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct e1000_hw*,size_t*,int,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void FUNC8(struct igb_adapter *adapter, u32 vf)
{
	struct e1000_hw *hw = &adapter->hw;
	unsigned char *vf_mac = adapter->vf_data[vf].vf_mac_addresses;
	u32 reg, msgbuf[3];
	u8 *addr = (u8 *)(&msgbuf[1]);

	/* process all the same items cleared in a function level reset */
	FUNC2(adapter, vf);

	/* set vf mac address */
	FUNC1(adapter, vf, vf_mac);

	/* enable transmit and receive for vf */
	reg = FUNC6(E1000_VFTE);
	FUNC7(E1000_VFTE, reg | FUNC0(vf));
	reg = FUNC6(E1000_VFRE);
	FUNC7(E1000_VFRE, reg | FUNC0(vf));

	adapter->vf_data[vf].flags |= IGB_VF_FLAG_CTS;

	/* reply to reset with ack and vf mac address */
	if (!FUNC4(vf_mac)) {
		msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_ACK;
		FUNC5(addr, vf_mac, ETH_ALEN);
	} else {
		msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_NACK;
	}
	FUNC3(hw, msgbuf, 3, vf);
}