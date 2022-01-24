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
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  clear_to_send; } ;

/* Variables and functions */
 int IXGBE_ERR_MBX ; 
 int IXGBE_VFMAILBOX_SIZE ; 
#define  IXGBE_VF_API_NEGOTIATE 139 
#define  IXGBE_VF_GET_QUEUES 138 
#define  IXGBE_VF_GET_RETA 137 
#define  IXGBE_VF_GET_RSS_KEY 136 
#define  IXGBE_VF_IPSEC_ADD 135 
#define  IXGBE_VF_IPSEC_DEL 134 
 int IXGBE_VF_RESET ; 
#define  IXGBE_VF_SET_LPE 133 
#define  IXGBE_VF_SET_MACVLAN 132 
#define  IXGBE_VF_SET_MAC_ADDR 131 
#define  IXGBE_VF_SET_MULTICAST 130 
#define  IXGBE_VF_SET_VLAN 129 
#define  IXGBE_VF_UPDATE_XCAST_MODE 128 
 int IXGBE_VT_MSGTYPE_ACK ; 
 int IXGBE_VT_MSGTYPE_CTS ; 
 int IXGBE_VT_MSGTYPE_NACK ; 
 int /*<<< orphan*/  FUNC0 (struct ixgbe_hw*) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC3 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC4 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC5 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC6 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC7 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC8 (struct ixgbe_hw*,int*,int,int) ; 
 int FUNC9 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC10 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC11 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC12 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC13 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC14 (struct ixgbe_adapter*,int*,int) ; 
 int FUNC15 (struct ixgbe_adapter*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ixgbe_hw*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 

__attribute__((used)) static int FUNC18(struct ixgbe_adapter *adapter, u32 vf)
{
	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
	u32 msgbuf[IXGBE_VFMAILBOX_SIZE];
	struct ixgbe_hw *hw = &adapter->hw;
	s32 retval;

	retval = FUNC8(hw, msgbuf, mbx_size, vf);

	if (retval) {
		FUNC17("Error receiving message from VF\n");
		return retval;
	}

	/* this is a message we already processed, do nothing */
	if (msgbuf[0] & (IXGBE_VT_MSGTYPE_ACK | IXGBE_VT_MSGTYPE_NACK))
		return 0;

	/* flush the ack before we write any messages back */
	FUNC0(hw);

	if (msgbuf[0] == IXGBE_VF_RESET)
		return FUNC15(adapter, vf);

	/*
	 * until the vf completes a virtual function reset it should not be
	 * allowed to start any configuration.
	 */
	if (!adapter->vfinfo[vf].clear_to_send) {
		msgbuf[0] |= IXGBE_VT_MSGTYPE_NACK;
		FUNC16(hw, msgbuf, 1, vf);
		return 0;
	}

	switch ((msgbuf[0] & 0xFFFF)) {
	case IXGBE_VF_SET_MAC_ADDR:
		retval = FUNC10(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_MULTICAST:
		retval = FUNC12(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_VLAN:
		retval = FUNC13(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_LPE:
		retval = FUNC9(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_SET_MACVLAN:
		retval = FUNC11(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_API_NEGOTIATE:
		retval = FUNC7(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_GET_QUEUES:
		retval = FUNC2(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_GET_RETA:
		retval = FUNC3(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_GET_RSS_KEY:
		retval = FUNC4(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_UPDATE_XCAST_MODE:
		retval = FUNC14(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_IPSEC_ADD:
		retval = FUNC5(adapter, msgbuf, vf);
		break;
	case IXGBE_VF_IPSEC_DEL:
		retval = FUNC6(adapter, msgbuf, vf);
		break;
	default:
		FUNC1(drv, "Unhandled Msg %8.8x\n", msgbuf[0]);
		retval = IXGBE_ERR_MBX;
		break;
	}

	/* notify the VF of the results of what it sent us */
	if (retval)
		msgbuf[0] |= IXGBE_VT_MSGTYPE_NACK;
	else
		msgbuf[0] |= IXGBE_VT_MSGTYPE_ACK;

	msgbuf[0] |= IXGBE_VT_MSGTYPE_CTS;

	FUNC16(hw, msgbuf, mbx_size, vf);

	return retval;
}