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
typedef  size_t u32 ;
struct vf_data_storage {int flags; int /*<<< orphan*/  pf_vlan; scalar_t__ last_nack; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {struct vf_data_storage* vf_data; struct e1000_hw hw; struct pci_dev* pdev; } ;
typedef  int s32 ;

/* Variables and functions */
 int E1000_VFMAILBOX_SIZE ; 
 size_t E1000_VF_RESET ; 
#define  E1000_VF_SET_LPE 132 
#define  E1000_VF_SET_MAC_ADDR 131 
#define  E1000_VF_SET_MULTICAST 130 
#define  E1000_VF_SET_PROMISC 129 
#define  E1000_VF_SET_VLAN 128 
 size_t E1000_VT_MSGTYPE_ACK ; 
 size_t E1000_VT_MSGTYPE_CTS ; 
 size_t E1000_VT_MSGTYPE_NACK ; 
 int HZ ; 
 int IGB_VF_FLAG_CTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC2 (struct e1000_hw*,size_t*,int,size_t,int) ; 
 int FUNC3 (struct igb_adapter*,size_t*,size_t) ; 
 int FUNC4 (struct igb_adapter*,size_t*,size_t) ; 
 int FUNC5 (struct igb_adapter*,size_t*,size_t) ; 
 int FUNC6 (struct igb_adapter*,size_t,size_t) ; 
 int FUNC7 (struct igb_adapter*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct e1000_hw*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct igb_adapter*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct e1000_hw*,size_t*,int,size_t) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct igb_adapter *adapter, u32 vf)
{
	struct pci_dev *pdev = adapter->pdev;
	u32 msgbuf[E1000_VFMAILBOX_SIZE];
	struct e1000_hw *hw = &adapter->hw;
	struct vf_data_storage *vf_data = &adapter->vf_data[vf];
	s32 retval;

	retval = FUNC2(hw, msgbuf, E1000_VFMAILBOX_SIZE, vf, false);

	if (retval) {
		/* if receive failed revoke VF CTS stats and restart init */
		FUNC0(&pdev->dev, "Error receiving message from VF\n");
		vf_data->flags &= ~IGB_VF_FLAG_CTS;
		if (!FUNC11(jiffies, vf_data->last_nack + (2 * HZ)))
			goto unlock;
		goto out;
	}

	/* this is a message we already processed, do nothing */
	if (msgbuf[0] & (E1000_VT_MSGTYPE_ACK | E1000_VT_MSGTYPE_NACK))
		goto unlock;

	/* until the vf completes a reset it should not be
	 * allowed to start any configuration.
	 */
	if (msgbuf[0] == E1000_VF_RESET) {
		/* unlocks mailbox */
		FUNC9(adapter, vf);
		return;
	}

	if (!(vf_data->flags & IGB_VF_FLAG_CTS)) {
		if (!FUNC11(jiffies, vf_data->last_nack + (2 * HZ)))
			goto unlock;
		retval = -1;
		goto out;
	}

	switch ((msgbuf[0] & 0xFFFF)) {
	case E1000_VF_SET_MAC_ADDR:
		retval = FUNC3(adapter, msgbuf, vf);
		break;
	case E1000_VF_SET_PROMISC:
		retval = FUNC5(adapter, msgbuf, vf);
		break;
	case E1000_VF_SET_MULTICAST:
		retval = FUNC4(adapter, msgbuf, vf);
		break;
	case E1000_VF_SET_LPE:
		retval = FUNC6(adapter, msgbuf[1], vf);
		break;
	case E1000_VF_SET_VLAN:
		retval = -1;
		if (vf_data->pf_vlan)
			FUNC1(&pdev->dev,
				 "VF %d attempted to override administratively set VLAN tag\nReload the VF driver to resume operations\n",
				 vf);
		else
			retval = FUNC7(adapter, msgbuf, vf);
		break;
	default:
		FUNC0(&pdev->dev, "Unhandled Msg %08x\n", msgbuf[0]);
		retval = -1;
		break;
	}

	msgbuf[0] |= E1000_VT_MSGTYPE_CTS;
out:
	/* notify the VF of the results of what it sent us */
	if (retval)
		msgbuf[0] |= E1000_VT_MSGTYPE_NACK;
	else
		msgbuf[0] |= E1000_VT_MSGTYPE_ACK;

	/* unlocks mailbox */
	FUNC10(hw, msgbuf, 1, vf);
	return;

unlock:
	FUNC8(hw, vf);
}