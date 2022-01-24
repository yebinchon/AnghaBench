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
struct timer_list {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_9__ {int msdu_payld; } ;
struct TYPE_8__ {scalar_t__* vaddr; void* paddr; } ;
struct TYPE_10__ {int size; int size_mask; int /*<<< orphan*/  netbufs_ring; void* base_paddr; int /*<<< orphan*/  fill_level; int /*<<< orphan*/  skb_table; TYPE_4__ sw_rd_idx; scalar_t__ fill_cnt; int /*<<< orphan*/  lock; TYPE_3__ alloc_idx; struct timer_list refill_retry_timer; } ;
struct ath10k_htt {int rx_confused; TYPE_5__ rx_ring; struct ath10k* ar; int /*<<< orphan*/  num_mpdus_ready; int /*<<< orphan*/  tx_fetch_ind_q; int /*<<< orphan*/  rx_in_ord_compl_q; int /*<<< orphan*/  rx_msdus_q; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx_ring_fill_level; } ;
struct TYPE_6__ {scalar_t__ dev_type; } ;
struct ath10k {int /*<<< orphan*/  dev; TYPE_2__ hw_params; TYPE_1__ bus_param; } ;
typedef  void* dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_BOOT ; 
 scalar_t__ ATH10K_DEV_TYPE_HL ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HTT_RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ath10k_htt*,void*) ; 
 size_t FUNC2 (struct ath10k_htt*) ; 
 int /*<<< orphan*/  ath10k_htt_rx_ring_refill_retry ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,size_t,void*,void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC14(struct ath10k_htt *htt)
{
	struct ath10k *ar = htt->ar;
	dma_addr_t paddr;
	void *vaddr, *vaddr_ring;
	size_t size;
	struct timer_list *timer = &htt->rx_ring.refill_retry_timer;

	if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
		return 0;

	htt->rx_confused = false;

	/* XXX: The fill level could be changed during runtime in response to
	 * the host processing latency. Is this really worth it?
	 */
	htt->rx_ring.size = HTT_RX_RING_SIZE;
	htt->rx_ring.size_mask = htt->rx_ring.size - 1;
	htt->rx_ring.fill_level = ar->hw_params.rx_ring_fill_level;

	if (!FUNC8(htt->rx_ring.size)) {
		FUNC3(ar, "htt rx ring size is not power of 2\n");
		return -EINVAL;
	}

	htt->rx_ring.netbufs_ring =
		FUNC9(htt->rx_ring.size, sizeof(struct sk_buff *),
			GFP_KERNEL);
	if (!htt->rx_ring.netbufs_ring)
		goto err_netbuf;

	size = FUNC2(htt);

	vaddr_ring = FUNC5(htt->ar->dev, size, &paddr, GFP_KERNEL);
	if (!vaddr_ring)
		goto err_dma_ring;

	FUNC1(htt, vaddr_ring);
	htt->rx_ring.base_paddr = paddr;

	vaddr = FUNC5(htt->ar->dev,
				   sizeof(*htt->rx_ring.alloc_idx.vaddr),
				   &paddr, GFP_KERNEL);
	if (!vaddr)
		goto err_dma_idx;

	htt->rx_ring.alloc_idx.vaddr = vaddr;
	htt->rx_ring.alloc_idx.paddr = paddr;
	htt->rx_ring.sw_rd_idx.msdu_payld = htt->rx_ring.size_mask;
	*htt->rx_ring.alloc_idx.vaddr = 0;

	/* Initialize the Rx refill retry timer */
	FUNC13(timer, ath10k_htt_rx_ring_refill_retry, 0);

	FUNC12(&htt->rx_ring.lock);

	htt->rx_ring.fill_cnt = 0;
	htt->rx_ring.sw_rd_idx.msdu_payld = 0;
	FUNC7(htt->rx_ring.skb_table);

	FUNC11(&htt->rx_msdus_q);
	FUNC11(&htt->rx_in_ord_compl_q);
	FUNC11(&htt->tx_fetch_ind_q);
	FUNC4(&htt->num_mpdus_ready, 0);

	FUNC0(ar, ATH10K_DBG_BOOT, "htt rx ring size %d fill_level %d\n",
		   htt->rx_ring.size, htt->rx_ring.fill_level);
	return 0;

err_dma_idx:
	FUNC6(htt->ar->dev,
			  FUNC2(htt),
			  vaddr_ring,
			  htt->rx_ring.base_paddr);
err_dma_ring:
	FUNC10(htt->rx_ring.netbufs_ring);
err_netbuf:
	return -ENOMEM;
}