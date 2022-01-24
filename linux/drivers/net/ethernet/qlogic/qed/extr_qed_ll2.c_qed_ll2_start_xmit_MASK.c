#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct qed_ll2_tx_pkt_info {int num_of_bds; int bd_flags; int remove_stag; struct sk_buff* cookie; int /*<<< orphan*/  first_frag_len; int /*<<< orphan*/  first_frag; int /*<<< orphan*/  tx_dest; int /*<<< orphan*/  vlan; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {unsigned long mf_bits; TYPE_2__* pdev; TYPE_1__* ll2; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  pkt ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_8__ {scalar_t__ nexthdr; } ;
struct TYPE_7__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ CHECKSUM_NONE ; 
 int CORE_LL2_TX_MAX_BDS_PER_PACKET ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_IP_CSUM_SHIFT ; 
 int /*<<< orphan*/  CORE_TX_BD_DATA_VLAN_INSERTION_SHIFT ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_dev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_dev*,char*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 scalar_t__ NEXTHDR_IPV6 ; 
 struct qed_hwfn* FUNC4 (struct qed_dev*) ; 
 int /*<<< orphan*/  QED_LL2_TX_DEST_NW ; 
 int /*<<< orphan*/  QED_LL2_XMIT_FLAGS_FIP_DISCOVERY ; 
 int /*<<< orphan*/  QED_MF_UFP_SPECIFIC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_ll2_tx_pkt_info*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct qed_hwfn*,int /*<<< orphan*/ ,struct qed_ll2_tx_pkt_info*,int) ; 
 int FUNC12 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 TYPE_3__* FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 scalar_t__ FUNC17 (struct sk_buff*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,unsigned long*) ; 
 scalar_t__ FUNC19 (int) ; 
 scalar_t__ FUNC20 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC21(struct qed_dev *cdev, struct sk_buff *skb,
			      unsigned long xmit_flags)
{
	struct qed_hwfn *p_hwfn = FUNC4(cdev);
	struct qed_ll2_tx_pkt_info pkt;
	const skb_frag_t *frag;
	u8 flags = 0, nr_frags;
	int rc = -EINVAL, i;
	dma_addr_t mapping;
	u16 vlan = 0;

	if (FUNC19(skb->ip_summed != CHECKSUM_NONE)) {
		FUNC2(cdev, "Cannot transmit a checksummed packet\n");
		return -EINVAL;
	}

	/* Cache number of fragments from SKB since SKB may be freed by
	 * the completion routine after calling qed_ll2_prepare_tx_packet()
	 */
	nr_frags = FUNC15(skb)->nr_frags;

	if (1 + nr_frags > CORE_LL2_TX_MAX_BDS_PER_PACKET) {
		FUNC1(cdev, "Cannot transmit a packet with %d fragments\n",
		       1 + nr_frags);
		return -EINVAL;
	}

	mapping = FUNC5(&cdev->pdev->dev, skb->data,
				 skb->len, DMA_TO_DEVICE);
	if (FUNC19(FUNC6(&cdev->pdev->dev, mapping))) {
		FUNC3(cdev, "SKB mapping failed\n");
		return -EINVAL;
	}

	/* Request HW to calculate IP csum */
	if (!((FUNC20(skb) == FUNC8(ETH_P_IPV6)) &&
	      FUNC9(skb)->nexthdr == NEXTHDR_IPV6))
		flags |= FUNC0(CORE_TX_BD_DATA_IP_CSUM_SHIFT);

	if (FUNC17(skb)) {
		vlan = FUNC16(skb);
		flags |= FUNC0(CORE_TX_BD_DATA_VLAN_INSERTION_SHIFT);
	}

	FUNC10(&pkt, 0, sizeof(pkt));
	pkt.num_of_bds = 1 + nr_frags;
	pkt.vlan = vlan;
	pkt.bd_flags = flags;
	pkt.tx_dest = QED_LL2_TX_DEST_NW;
	pkt.first_frag = mapping;
	pkt.first_frag_len = skb->len;
	pkt.cookie = skb;
	if (FUNC18(QED_MF_UFP_SPECIFIC, &cdev->mf_bits) &&
	    FUNC18(QED_LL2_XMIT_FLAGS_FIP_DISCOVERY, &xmit_flags))
		pkt.remove_stag = true;

	/* qed_ll2_prepare_tx_packet() may actually send the packet if
	 * there are no fragments in the skb and subsequently the completion
	 * routine may run and free the SKB, so no dereferencing the SKB
	 * beyond this point unless skb has any fragments.
	 */
	rc = FUNC11(p_hwfn, cdev->ll2->handle,
				       &pkt, 1);
	if (rc)
		goto err;

	for (i = 0; i < nr_frags; i++) {
		frag = &FUNC15(skb)->frags[i];

		mapping = FUNC13(&cdev->pdev->dev, frag, 0,
					   FUNC14(frag), DMA_TO_DEVICE);

		if (FUNC19(FUNC6(&cdev->pdev->dev, mapping))) {
			FUNC3(cdev,
				  "Unable to map frag - dropping packet\n");
			rc = -ENOMEM;
			goto err;
		}

		rc = FUNC12(p_hwfn,
						       cdev->ll2->handle,
						       mapping,
						       FUNC14(frag));

		/* if failed not much to do here, partial packet has been posted
		 * we can't free memory, will need to wait for completion
		 */
		if (rc)
			goto err2;
	}

	return 0;

err:
	FUNC7(&cdev->pdev->dev, mapping, skb->len, DMA_TO_DEVICE);
err2:
	return rc;
}