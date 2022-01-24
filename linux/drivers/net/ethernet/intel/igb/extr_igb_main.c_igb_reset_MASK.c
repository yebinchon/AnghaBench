#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  union e1000_adv_tx_desc {int dummy; } e1000_adv_tx_desc ;
typedef  int u32 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* get_invariants ) (struct e1000_hw*) ;} ;
struct TYPE_10__ {scalar_t__ media_type; } ;
struct TYPE_8__ {scalar_t__ func; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* init_thermal_sensor_thresh ) (struct e1000_hw*) ;scalar_t__ (* init_hw ) (struct e1000_hw*) ;int /*<<< orphan*/  (* reset_hw ) (struct e1000_hw*) ;} ;
struct e1000_mac_info {int type; TYPE_4__ ops; int /*<<< orphan*/  autoneg; } ;
struct e1000_fc_info {int high_water; int low_water; int pause_time; int send_xon; int /*<<< orphan*/  requested_mode; int /*<<< orphan*/  current_mode; } ;
struct e1000_hw {TYPE_5__ phy; TYPE_3__ bus; struct e1000_mac_info mac; struct e1000_fc_info fc; } ;
struct igb_adapter {int max_frame_size; int vfs_allocated_count; int flags; int ptp_flags; int /*<<< orphan*/  netdev; scalar_t__ ets; int /*<<< orphan*/  state; TYPE_2__ ei; TYPE_1__* vf_data; struct e1000_hw hw; struct pci_dev* pdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  E1000_PBA ; 
 int E1000_PBA_34K ; 
 int /*<<< orphan*/  E1000_RXPBS ; 
 int E1000_RXPBS_SIZE_MASK_82576 ; 
 int /*<<< orphan*/  E1000_VET ; 
 int /*<<< orphan*/  E1000_VFRE ; 
 int /*<<< orphan*/  E1000_VFTE ; 
 int /*<<< orphan*/  E1000_WUC ; 
 int ETHERNET_IEEE_VLAN_TYPE ; 
 int ETH_FCS_LEN ; 
 int IGB_FLAG_MAS_ENABLE ; 
 int IGB_FLAG_MEDIA_RESET ; 
 int IGB_PTP_ENABLED ; 
 int /*<<< orphan*/  IGB_VF_FLAG_PF_SET_MAC ; 
 int MAX_JUMBO_FRAME_SIZE ; 
 int /*<<< orphan*/  __IGB_DOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
#define  e1000_82575 134 
#define  e1000_82576 133 
#define  e1000_82580 132 
#define  e1000_i210 131 
#define  e1000_i211 130 
#define  e1000_i350 129 
#define  e1000_i354 128 
 scalar_t__ e1000_media_type_copper ; 
 int /*<<< orphan*/  FUNC3 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC6 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC7 (struct igb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct igb_adapter*) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC13 (struct e1000_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct e1000_hw*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct igb_adapter*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC19 (struct e1000_hw*) ; 
 scalar_t__ FUNC20 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC21 (struct e1000_hw*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int) ; 

void FUNC24(struct igb_adapter *adapter)
{
	struct pci_dev *pdev = adapter->pdev;
	struct e1000_hw *hw = &adapter->hw;
	struct e1000_mac_info *mac = &hw->mac;
	struct e1000_fc_info *fc = &hw->fc;
	u32 pba, hwm;

	/* Repartition Pba for greater than 9k mtu
	 * To take effect CTRL.RST is required.
	 */
	switch (mac->type) {
	case e1000_i350:
	case e1000_i354:
	case e1000_82580:
		pba = FUNC17(E1000_RXPBS);
		pba = FUNC11(pba);
		break;
	case e1000_82576:
		pba = FUNC17(E1000_RXPBS);
		pba &= E1000_RXPBS_SIZE_MASK_82576;
		break;
	case e1000_82575:
	case e1000_i210:
	case e1000_i211:
	default:
		pba = E1000_PBA_34K;
		break;
	}

	if (mac->type == e1000_82575) {
		u32 min_rx_space, min_tx_space, needed_tx_space;

		/* write Rx PBA so that hardware can report correct Tx PBA */
		FUNC23(E1000_PBA, pba);

		/* To maintain wire speed transmits, the Tx FIFO should be
		 * large enough to accommodate two full transmit packets,
		 * rounded up to the next 1KB and expressed in KB.  Likewise,
		 * the Rx FIFO should be large enough to accommodate at least
		 * one full receive packet and is similarly rounded up and
		 * expressed in KB.
		 */
		min_rx_space = FUNC0(MAX_JUMBO_FRAME_SIZE, 1024);

		/* The Tx FIFO also stores 16 bytes of information about the Tx
		 * but don't include Ethernet FCS because hardware appends it.
		 * We only need to round down to the nearest 512 byte block
		 * count since the value we care about is 2 frames, not 1.
		 */
		min_tx_space = adapter->max_frame_size;
		min_tx_space += sizeof(union e1000_adv_tx_desc) - ETH_FCS_LEN;
		min_tx_space = FUNC0(min_tx_space, 512);

		/* upper 16 bits has Tx packet buffer allocation size in KB */
		needed_tx_space = min_tx_space - (FUNC17(E1000_PBA) >> 16);

		/* If current Tx allocation is less than the min Tx FIFO size,
		 * and the min Tx FIFO size is less than the current Rx FIFO
		 * allocation, take space away from current Rx allocation.
		 */
		if (needed_tx_space < pba) {
			pba -= needed_tx_space;

			/* if short on Rx space, Rx wins and must trump Tx
			 * adjustment
			 */
			if (pba < min_rx_space)
				pba = min_rx_space;
		}

		/* adjust PBA for jumbo frames */
		FUNC23(E1000_PBA, pba);
	}

	/* flow control settings
	 * The high water mark must be low enough to fit one full frame
	 * after transmitting the pause frame.  As such we must have enough
	 * space to allow for us to complete our current transmit and then
	 * receive the frame that is in progress from the link partner.
	 * Set it to:
	 * - the full Rx FIFO size minus one full Tx plus one full Rx frame
	 */
	hwm = (pba << 10) - (adapter->max_frame_size + MAX_JUMBO_FRAME_SIZE);

	fc->high_water = hwm & 0xFFFFFFF0;	/* 16-byte granularity */
	fc->low_water = fc->high_water - 16;
	fc->pause_time = 0xFFFF;
	fc->send_xon = 1;
	fc->current_mode = fc->requested_mode;

	/* disable receive for all VFs and wait one second */
	if (adapter->vfs_allocated_count) {
		int i;

		for (i = 0 ; i < adapter->vfs_allocated_count; i++)
			adapter->vf_data[i].flags &= IGB_VF_FLAG_PF_SET_MAC;

		/* ping all the active vfs to let them know we are going down */
		FUNC8(adapter);

		/* disable transmits and receives */
		FUNC23(E1000_VFRE, 0);
		FUNC23(E1000_VFTE, 0);
	}

	/* Allow time for pending master requests to run */
	hw->mac.ops.reset_hw(hw);
	FUNC23(E1000_WUC, 0);

	if (adapter->flags & IGB_FLAG_MEDIA_RESET) {
		/* need to resetup here after media swap */
		adapter->ei.get_invariants(hw);
		adapter->flags &= ~IGB_FLAG_MEDIA_RESET;
	}
	if ((mac->type == e1000_82575 || mac->type == e1000_i350) &&
	    (adapter->flags & IGB_FLAG_MAS_ENABLE)) {
		FUNC3(adapter);
	}
	if (hw->mac.ops.init_hw(hw))
		FUNC2(&pdev->dev, "Hardware Error\n");

	/* RAR registers were cleared during init_hw, clear mac table */
	FUNC4(adapter);
	FUNC1(adapter->netdev, NULL);

	/* Recover default RAR entry */
	FUNC12(adapter);

	/* Flow control settings reset on hardware reset, so guarantee flow
	 * control is off when forcing speed.
	 */
	if (!hw->mac.autoneg)
		FUNC5(hw);

	FUNC7(adapter, pba);
#ifdef CONFIG_IGB_HWMON
	/* Re-initialize the thermal sensor on i350 devices. */
	if (!test_bit(__IGB_DOWN, &adapter->state)) {
		if (mac->type == e1000_i350 && hw->bus.func == 0) {
			/* If present, re-initialize the external thermal sensor
			 * interface.
			 */
			if (adapter->ets)
				mac->ops.init_thermal_sensor_thresh(hw);
		}
	}
#endif
	/* Re-establish EEE setting */
	if (hw->phy.media_type == e1000_media_type_copper) {
		switch (mac->type) {
		case e1000_i350:
		case e1000_i210:
		case e1000_i211:
			FUNC13(hw, true, true);
			break;
		case e1000_i354:
			FUNC14(hw, true, true);
			break;
		default:
			break;
		}
	}
	if (!FUNC16(adapter->netdev))
		FUNC9(adapter);

	FUNC15(adapter);

	/* Enable h/w to recognize an 802.1Q VLAN Ethernet packet */
	FUNC23(E1000_VET, ETHERNET_IEEE_VLAN_TYPE);

	/* Re-enable PTP, where applicable. */
	if (adapter->ptp_flags & IGB_PTP_ENABLED)
		FUNC10(adapter);

	FUNC6(hw);
}