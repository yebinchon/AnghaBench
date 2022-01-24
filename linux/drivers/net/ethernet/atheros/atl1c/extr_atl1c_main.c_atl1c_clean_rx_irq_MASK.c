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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int dummy; } ;
struct atl1c_rrd_ring {int /*<<< orphan*/  next_to_clean; } ;
struct atl1c_rfd_ring {struct atl1c_buffer* buffer_info; } ;
struct atl1c_recv_ret_status {int word3; int word0; int /*<<< orphan*/  vlan_tag; } ;
struct atl1c_buffer {struct sk_buff* skb; int /*<<< orphan*/  length; int /*<<< orphan*/  dma; } ;
struct atl1c_adapter {struct atl1c_rrd_ring rrd_ring; struct atl1c_rfd_ring rfd_ring; struct net_device* netdev; struct pci_dev* pdev; } ;

/* Variables and functions */
 struct atl1c_recv_ret_status* FUNC0 (struct atl1c_rrd_ring*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int ETH_FCS_LEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 int RRS_802_3_LEN_ERR ; 
 int RRS_PKT_SIZE_MASK ; 
 int RRS_PKT_SIZE_SHIFT ; 
 int FUNC2 (int) ; 
 int RRS_RX_ERR_SUM ; 
 int RRS_RX_RFD_CNT_MASK ; 
 int RRS_RX_RFD_CNT_SHIFT ; 
 int RRS_RX_RFD_INDEX_MASK ; 
 int RRS_RX_RFD_INDEX_SHIFT ; 
 int RRS_VLAN_INS ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1c_rfd_ring*,struct atl1c_recv_ret_status*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct atl1c_rrd_ring*,struct atl1c_recv_ret_status*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct atl1c_adapter*,struct sk_buff*,struct atl1c_recv_ret_status*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 
 scalar_t__ FUNC13 (struct atl1c_adapter*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,int) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static void FUNC18(struct atl1c_adapter *adapter,
		   int *work_done, int work_to_do)
{
	u16 rfd_num, rfd_index;
	u16 count = 0;
	u16 length;
	struct pci_dev *pdev = adapter->pdev;
	struct net_device *netdev  = adapter->netdev;
	struct atl1c_rfd_ring *rfd_ring = &adapter->rfd_ring;
	struct atl1c_rrd_ring *rrd_ring = &adapter->rrd_ring;
	struct sk_buff *skb;
	struct atl1c_recv_ret_status *rrs;
	struct atl1c_buffer *buffer_info;

	while (1) {
		if (*work_done >= work_to_do)
			break;
		rrs = FUNC0(rrd_ring, rrd_ring->next_to_clean);
		if (FUNC12(FUNC2(rrs->word3))) {
			rfd_num = (rrs->word0 >> RRS_RX_RFD_CNT_SHIFT) &
				RRS_RX_RFD_CNT_MASK;
			if (FUNC17(rfd_num != 1))
				/* TODO support mul rfd*/
				if (FUNC13(adapter))
					FUNC8(&pdev->dev,
						"Multi rfd not support yet!\n");
			goto rrs_checked;
		} else {
			break;
		}
rrs_checked:
		FUNC6(rrd_ring, rrs, rfd_num);
		if (rrs->word3 & (RRS_RX_ERR_SUM | RRS_802_3_LEN_ERR)) {
			FUNC5(rfd_ring, rrs, rfd_num);
			if (FUNC13(adapter))
				FUNC8(&pdev->dev,
					 "wrong packet! rrs word3 is %x\n",
					 rrs->word3);
			continue;
		}

		length = FUNC11((rrs->word3 >> RRS_PKT_SIZE_SHIFT) &
				RRS_PKT_SIZE_MASK);
		/* Good Receive */
		if (FUNC12(rfd_num == 1)) {
			rfd_index = (rrs->word0 >> RRS_RX_RFD_INDEX_SHIFT) &
					RRS_RX_RFD_INDEX_MASK;
			buffer_info = &rfd_ring->buffer_info[rfd_index];
			FUNC15(pdev, buffer_info->dma,
				buffer_info->length, PCI_DMA_FROMDEVICE);
			skb = buffer_info->skb;
		} else {
			/* TODO */
			if (FUNC13(adapter))
				FUNC8(&pdev->dev,
					"Multi rfd not support yet!\n");
			break;
		}
		FUNC5(rfd_ring, rrs, rfd_num);
		FUNC16(skb, length - ETH_FCS_LEN);
		skb->protocol = FUNC9(skb, netdev);
		FUNC7(adapter, skb, rrs);
		if (rrs->word3 & RRS_VLAN_INS) {
			u16 vlan;

			FUNC1(rrs->vlan_tag, vlan);
			vlan = FUNC11(vlan);
			FUNC3(skb, FUNC10(ETH_P_8021Q), vlan);
		}
		FUNC14(skb);

		(*work_done)++;
		count++;
	}
	if (count)
		FUNC4(adapter);
}