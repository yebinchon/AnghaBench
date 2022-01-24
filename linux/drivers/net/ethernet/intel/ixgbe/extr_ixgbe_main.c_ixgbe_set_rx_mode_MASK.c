#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct net_device {int features; int flags; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int user_set_promisc; } ;
struct ixgbe_hw {TYPE_2__ mac; TYPE_1__ addr_ctrl; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;
typedef  int netdev_features_t ;

/* Variables and functions */
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int /*<<< orphan*/  IXGBE_FCTRL ; 
 int IXGBE_FCTRL_BAM ; 
 int IXGBE_FCTRL_DPF ; 
 int IXGBE_FCTRL_MPE ; 
 int IXGBE_FCTRL_PMCF ; 
 int IXGBE_FCTRL_SBP ; 
 int IXGBE_FCTRL_UPE ; 
 int FUNC0 (struct ixgbe_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int IXGBE_VMOLR_AUPE ; 
 int IXGBE_VMOLR_BAM ; 
 int IXGBE_VMOLR_MPE ; 
 int IXGBE_VMOLR_ROMPE ; 
 int IXGBE_VMOLR_ROPE ; 
 int /*<<< orphan*/  FUNC2 (struct ixgbe_hw*,int /*<<< orphan*/ ,int) ; 
 int NETIF_F_HW_VLAN_CTAG_FILTER ; 
 int NETIF_F_HW_VLAN_CTAG_RX ; 
 int NETIF_F_RXALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ixgbe_mac_82598EB ; 
 int /*<<< orphan*/  ixgbe_uc_sync ; 
 int /*<<< orphan*/  ixgbe_uc_unsync ; 
 int /*<<< orphan*/  FUNC5 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct ixgbe_adapter*) ; 
 int /*<<< orphan*/  FUNC8 (struct ixgbe_adapter*) ; 
 int FUNC9 (struct net_device*) ; 
 struct ixgbe_adapter* FUNC10 (struct net_device*) ; 

void FUNC11(struct net_device *netdev)
{
	struct ixgbe_adapter *adapter = FUNC10(netdev);
	struct ixgbe_hw *hw = &adapter->hw;
	u32 fctrl, vmolr = IXGBE_VMOLR_BAM | IXGBE_VMOLR_AUPE;
	netdev_features_t features = netdev->features;
	int count;

	/* Check for Promiscuous and All Multicast modes */
	fctrl = FUNC0(hw, IXGBE_FCTRL);

	/* set all bits that we expect to always be set */
	fctrl &= ~IXGBE_FCTRL_SBP; /* disable store-bad-packets */
	fctrl |= IXGBE_FCTRL_BAM;
	fctrl |= IXGBE_FCTRL_DPF; /* discard pause frames when FC enabled */
	fctrl |= IXGBE_FCTRL_PMCF;

	/* clear the bits we are changing the status of */
	fctrl &= ~(IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
	if (netdev->flags & IFF_PROMISC) {
		hw->addr_ctrl.user_set_promisc = true;
		fctrl |= (IXGBE_FCTRL_UPE | IXGBE_FCTRL_MPE);
		vmolr |= IXGBE_VMOLR_MPE;
		features &= ~NETIF_F_HW_VLAN_CTAG_FILTER;
	} else {
		if (netdev->flags & IFF_ALLMULTI) {
			fctrl |= IXGBE_FCTRL_MPE;
			vmolr |= IXGBE_VMOLR_MPE;
		}
		hw->addr_ctrl.user_set_promisc = false;
	}

	/*
	 * Write addresses to available RAR registers, if there is not
	 * sufficient space to store all the addresses then enable
	 * unicast promiscuous mode
	 */
	if (FUNC4(netdev, ixgbe_uc_sync, ixgbe_uc_unsync)) {
		fctrl |= IXGBE_FCTRL_UPE;
		vmolr |= IXGBE_VMOLR_ROPE;
	}

	/* Write addresses to the MTA, if the attempt fails
	 * then we should just turn on promiscuous mode so
	 * that we can at least receive multicast traffic
	 */
	count = FUNC9(netdev);
	if (count < 0) {
		fctrl |= IXGBE_FCTRL_MPE;
		vmolr |= IXGBE_VMOLR_MPE;
	} else if (count) {
		vmolr |= IXGBE_VMOLR_ROMPE;
	}

	if (hw->mac.type != ixgbe_mac_82598EB) {
		vmolr |= FUNC0(hw, FUNC1(FUNC3(0))) &
			 ~(IXGBE_VMOLR_MPE | IXGBE_VMOLR_ROMPE |
			   IXGBE_VMOLR_ROPE);
		FUNC2(hw, FUNC1(FUNC3(0)), vmolr);
	}

	/* This is useful for sniffing bad packets. */
	if (features & NETIF_F_RXALL) {
		/* UPE and MPE will be handled by normal PROMISC logic
		 * in e1000e_set_rx_mode */
		fctrl |= (IXGBE_FCTRL_SBP | /* Receive bad packets */
			  IXGBE_FCTRL_BAM | /* RX All Bcast Pkts */
			  IXGBE_FCTRL_PMCF); /* RX All MAC Ctrl Pkts */

		fctrl &= ~(IXGBE_FCTRL_DPF);
		/* NOTE:  VLAN filtering is disabled by setting PROMISC */
	}

	FUNC2(hw, IXGBE_FCTRL, fctrl);

	if (features & NETIF_F_HW_VLAN_CTAG_RX)
		FUNC8(adapter);
	else
		FUNC7(adapter);

	if (features & NETIF_F_HW_VLAN_CTAG_FILTER)
		FUNC5(adapter);
	else
		FUNC6(adapter);
}