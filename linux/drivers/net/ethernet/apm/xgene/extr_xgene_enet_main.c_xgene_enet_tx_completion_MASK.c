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
typedef  size_t u8 ;
typedef  size_t u16 ;
struct xgene_enet_raw_desc {int /*<<< orphan*/  m0; int /*<<< orphan*/  m3; int /*<<< orphan*/  m1; } ;
struct xgene_enet_pdata {int /*<<< orphan*/  mss_lock; int /*<<< orphan*/ * mss_refcnt; } ;
struct xgene_enet_desc_ring {int /*<<< orphan*/  ndev; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/ * frag_dma_addr; struct sk_buff** cp_skb; } ;
struct sk_buff {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATAADDR ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LERR ; 
 size_t MAX_SKB_FRAGS ; 
 int /*<<< orphan*/  MSS ; 
 int /*<<< orphan*/  USERINFO ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 struct device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 struct xgene_enet_pdata* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 TYPE_1__* FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct xgene_enet_desc_ring *cp_ring,
				    struct xgene_enet_raw_desc *raw_desc)
{
	struct xgene_enet_pdata *pdata = FUNC9(cp_ring->ndev);
	struct sk_buff *skb;
	struct device *dev;
	skb_frag_t *frag;
	dma_addr_t *frag_dma_addr;
	u16 skb_index;
	u8 mss_index;
	u8 status;
	int i;

	skb_index = FUNC1(USERINFO, FUNC5(raw_desc->m0));
	skb = cp_ring->cp_skb[skb_index];
	frag_dma_addr = &cp_ring->frag_dma_addr[skb_index * MAX_SKB_FRAGS];

	dev = FUNC7(cp_ring->ndev);
	FUNC4(dev, FUNC1(DATAADDR, FUNC5(raw_desc->m1)),
			 FUNC11(skb),
			 DMA_TO_DEVICE);

	for (i = 0; i < FUNC12(skb)->nr_frags; i++) {
		frag = &FUNC12(skb)->frags[i];
		FUNC3(dev, frag_dma_addr[i], FUNC10(frag),
			       DMA_TO_DEVICE);
	}

	if (FUNC0(ET, FUNC5(raw_desc->m3))) {
		mss_index = FUNC1(MSS, FUNC5(raw_desc->m3));
		FUNC13(&pdata->mss_lock);
		pdata->mss_refcnt[mss_index]--;
		FUNC14(&pdata->mss_lock);
	}

	/* Checking for error */
	status = FUNC1(LERR, FUNC5(raw_desc->m0));
	if (FUNC15(status > 2)) {
		cp_ring->tx_dropped++;
		cp_ring->tx_errors++;
	}

	if (FUNC6(skb)) {
		FUNC2(skb);
	} else {
		FUNC8(cp_ring->ndev, "completion skb is NULL\n");
	}

	return 0;
}