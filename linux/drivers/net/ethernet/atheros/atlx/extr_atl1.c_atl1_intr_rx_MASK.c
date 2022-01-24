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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct TYPE_7__ {int /*<<< orphan*/  pkt_size; } ;
struct TYPE_8__ {int valid; TYPE_2__ xsum_sz; } ;
struct rx_return_desc {int num_buf; int pkt_flg; int err_flg; int vlan_tag; size_t buf_indx; TYPE_3__ xsz; } ;
struct atl1_rrd_ring {scalar_t__ count; int /*<<< orphan*/  next_to_clean; } ;
struct atl1_rfd_ring {scalar_t__ next_to_clean; scalar_t__ count; int /*<<< orphan*/  next_to_use; struct atl1_buffer* buffer_info; } ;
struct atl1_buffer {scalar_t__ alloced; struct sk_buff* skb; scalar_t__ dma; int /*<<< orphan*/  length; } ;
struct TYPE_6__ {scalar_t__ hw_addr; } ;
struct TYPE_9__ {int /*<<< orphan*/  next_to_use; } ;
struct atl1_adapter {int /*<<< orphan*/  mb_lock; TYPE_1__ hw; struct atl1_rrd_ring rrd_ring; struct atl1_rfd_ring rfd_ring; TYPE_4__ tpd_ring; int /*<<< orphan*/  netdev; TYPE_5__* pdev; int /*<<< orphan*/  rx_buffer_len; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct rx_return_desc* FUNC0 (struct atl1_rrd_ring*,scalar_t__) ; 
 int ERR_FLAG_IP_CHKSUM ; 
 int ERR_FLAG_L4_CHKSUM ; 
 int ERR_FLAG_LEN ; 
 scalar_t__ ETH_FCS_LEN ; 
 int /*<<< orphan*/  ETH_P_8021Q ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 scalar_t__ MB_RFD_PROD_INDX_MASK ; 
 scalar_t__ MB_RFD_PROD_INDX_SHIFT ; 
 scalar_t__ MB_RRD_CONS_INDX_MASK ; 
 scalar_t__ MB_RRD_CONS_INDX_SHIFT ; 
 scalar_t__ MB_TPD_PROD_INDX_MASK ; 
 scalar_t__ MB_TPD_PROD_INDX_SHIFT ; 
 int PACKET_FLAG_ERR ; 
 int PACKET_FLAG_VLAN_INS ; 
 int /*<<< orphan*/  PCI_DMA_FROMDEVICE ; 
 scalar_t__ REG_MAILBOX ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct atl1_adapter*,struct rx_return_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atl1_adapter*,struct rx_return_desc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct atl1_adapter*,struct rx_return_desc*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 scalar_t__ FUNC14 (struct atl1_adapter*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 scalar_t__ FUNC21 (int) ; 

__attribute__((used)) static int FUNC22(struct atl1_adapter *adapter, int budget)
{
	int i, count;
	u16 length;
	u16 rrd_next_to_clean;
	u32 value;
	struct atl1_rfd_ring *rfd_ring = &adapter->rfd_ring;
	struct atl1_rrd_ring *rrd_ring = &adapter->rrd_ring;
	struct atl1_buffer *buffer_info;
	struct rx_return_desc *rrd;
	struct sk_buff *skb;

	count = 0;

	rrd_next_to_clean = FUNC6(&rrd_ring->next_to_clean);

	while (count < budget) {
		rrd = FUNC0(rrd_ring, rrd_next_to_clean);
		i = 1;
		if (FUNC13(rrd->xsz.valid)) {	/* packet valid */
chk_rrd:
			/* check rrd status */
			if (FUNC13(rrd->num_buf == 1))
				goto rrd_ok;
			else if (FUNC14(adapter)) {
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"unexpected RRD buffer count\n");
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"rx_buf_len = %d\n",
					adapter->rx_buffer_len);
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"RRD num_buf = %d\n",
					rrd->num_buf);
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"RRD pkt_len = %d\n",
					rrd->xsz.xsum_sz.pkt_size);
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"RRD pkt_flg = 0x%08X\n",
					rrd->pkt_flg);
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"RRD err_flg = 0x%08X\n",
					rrd->err_flg);
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"RRD vlan_tag = 0x%08X\n",
					rrd->vlan_tag);
			}

			/* rrd seems to be bad */
			if (FUNC21(i-- > 0)) {
				/* rrd may not be DMAed completely */
				FUNC20(1);
				goto chk_rrd;
			}
			/* bad rrd */
			if (FUNC14(adapter))
				FUNC8(KERN_DEBUG, &adapter->pdev->dev,
					"bad RRD\n");
			/* see if update RFD index */
			if (rrd->num_buf > 1)
				FUNC5(adapter, rrd);

			/* update rrd */
			rrd->xsz.valid = 0;
			if (++rrd_next_to_clean == rrd_ring->count)
				rrd_next_to_clean = 0;
			count++;
			continue;
		} else {	/* current rrd still not be updated */

			break;
		}
rrd_ok:
		/* clean alloc flag for bad rrd */
		FUNC3(adapter, rrd, 0);

		buffer_info = &rfd_ring->buffer_info[rrd->buf_indx];
		if (++rfd_ring->next_to_clean == rfd_ring->count)
			rfd_ring->next_to_clean = 0;

		/* update rrd next to clean */
		if (++rrd_next_to_clean == rrd_ring->count)
			rrd_next_to_clean = 0;
		count++;

		if (FUNC21(rrd->pkt_flg & PACKET_FLAG_ERR)) {
			if (!(rrd->err_flg &
				(ERR_FLAG_IP_CHKSUM | ERR_FLAG_L4_CHKSUM
				| ERR_FLAG_LEN))) {
				/* packet error, don't need upstream */
				buffer_info->alloced = 0;
				rrd->xsz.valid = 0;
				continue;
			}
		}

		/* Good Receive */
		FUNC16(adapter->pdev, buffer_info->dma,
			       buffer_info->length, PCI_DMA_FROMDEVICE);
		buffer_info->dma = 0;
		skb = buffer_info->skb;
		length = FUNC12(rrd->xsz.xsum_sz.pkt_size);

		FUNC17(skb, length - ETH_FCS_LEN);

		/* Receive Checksum Offload */
		FUNC4(adapter, rrd, skb);
		skb->protocol = FUNC9(skb, adapter->netdev);

		if (rrd->pkt_flg & PACKET_FLAG_VLAN_INS) {
			u16 vlan_tag = (rrd->vlan_tag >> 4) |
					((rrd->vlan_tag & 7) << 13) |
					((rrd->vlan_tag & 8) << 9);

			FUNC1(skb, FUNC10(ETH_P_8021Q), vlan_tag);
		}
		FUNC15(skb);

		/* let protocol layer free skb */
		buffer_info->skb = NULL;
		buffer_info->alloced = 0;
		rrd->xsz.valid = 0;
	}

	FUNC7(&rrd_ring->next_to_clean, rrd_next_to_clean);

	FUNC2(adapter);

	/* update mailbox ? */
	if (count) {
		u32 tpd_next_to_use;
		u32 rfd_next_to_use;

		FUNC18(&adapter->mb_lock);

		tpd_next_to_use = FUNC6(&adapter->tpd_ring.next_to_use);
		rfd_next_to_use =
		    FUNC6(&adapter->rfd_ring.next_to_use);
		rrd_next_to_clean =
		    FUNC6(&adapter->rrd_ring.next_to_clean);
		value = ((rfd_next_to_use & MB_RFD_PROD_INDX_MASK) <<
			MB_RFD_PROD_INDX_SHIFT) |
                        ((rrd_next_to_clean & MB_RRD_CONS_INDX_MASK) <<
			MB_RRD_CONS_INDX_SHIFT) |
                        ((tpd_next_to_use & MB_TPD_PROD_INDX_MASK) <<
			MB_TPD_PROD_INDX_SHIFT);
		FUNC11(value, adapter->hw.hw_addr + REG_MAILBOX);
		FUNC19(&adapter->mb_lock);
	}

	return count;
}