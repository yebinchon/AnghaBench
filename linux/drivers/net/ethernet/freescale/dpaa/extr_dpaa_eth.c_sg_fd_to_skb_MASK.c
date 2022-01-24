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
struct skb_shared_info {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  ip_summed; } ;
struct qm_sg_entry {int /*<<< orphan*/  bpid; } ;
struct qm_fd {int dummy; } ;
struct page {int dummy; } ;
struct dpaa_priv {int rx_headroom; } ;
struct dpaa_bp {unsigned int size; int /*<<< orphan*/  percpu_count; int /*<<< orphan*/  dev; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int DPAA_SGT_MAX_ENTRIES ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int PAGE_SIZE ; 
 unsigned int FUNC1 (int) ; 
 int /*<<< orphan*/  SMP_CACHE_BYTES ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 struct sk_buff* FUNC4 (void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct dpaa_bp* FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 (struct page*) ; 
 void* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qm_fd const*) ; 
 int FUNC10 (struct qm_fd const*) ; 
 int /*<<< orphan*/  FUNC11 (struct qm_sg_entry const*) ; 
 int FUNC12 (struct qm_sg_entry const*) ; 
 int FUNC13 (struct qm_sg_entry const*) ; 
 int FUNC14 (struct qm_sg_entry const*) ; 
 scalar_t__ FUNC15 (struct qm_sg_entry const*) ; 
 int /*<<< orphan*/  FUNC16 (struct dpaa_priv const*,struct qm_fd const*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int,struct page*,int,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (void*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int) ; 
 int* FUNC21 (int /*<<< orphan*/ ) ; 
 struct page* FUNC22 (void*) ; 
 struct page* FUNC23 (void*) ; 

__attribute__((used)) static struct sk_buff *FUNC24(const struct dpaa_priv *priv,
				    const struct qm_fd *fd)
{
	ssize_t fd_off = FUNC10(fd);
	dma_addr_t addr = FUNC9(fd);
	const struct qm_sg_entry *sgt;
	struct page *page, *head_page;
	struct dpaa_bp *dpaa_bp;
	void *vaddr, *sg_vaddr;
	int frag_off, frag_len;
	struct sk_buff *skb;
	dma_addr_t sg_addr;
	int page_offset;
	unsigned int sz;
	int *count_ptr;
	int i;

	vaddr = FUNC8(addr);
	FUNC2(!FUNC0((unsigned long)vaddr, SMP_CACHE_BYTES));

	/* Iterate through the SGT entries and add data buffers to the skb */
	sgt = vaddr + fd_off;
	skb = NULL;
	for (i = 0; i < DPAA_SGT_MAX_ENTRIES; i++) {
		/* Extension bit is not supported */
		FUNC2(FUNC14(&sgt[i]));

		sg_addr = FUNC11(&sgt[i]);
		sg_vaddr = FUNC8(sg_addr);
		FUNC2(!FUNC0((unsigned long)sg_vaddr,
				    SMP_CACHE_BYTES));

		/* We may use multiple Rx pools */
		dpaa_bp = FUNC6(sgt[i].bpid);
		if (!dpaa_bp)
			goto free_buffers;

		count_ptr = FUNC21(dpaa_bp->percpu_count);
		FUNC5(dpaa_bp->dev, sg_addr, dpaa_bp->size,
				 DMA_FROM_DEVICE);
		if (!skb) {
			sz = dpaa_bp->size +
				FUNC1(sizeof(struct skb_shared_info));
			skb = FUNC4(sg_vaddr, sz);
			if (FUNC2(!skb))
				goto free_buffers;

			skb->ip_summed = FUNC16(priv, fd);

			/* Make sure forwarded skbs will have enough space
			 * on Tx, if extra headers are added.
			 */
			FUNC2(fd_off != priv->rx_headroom);
			FUNC20(skb, fd_off);
			FUNC19(skb, FUNC12(&sgt[i]));
		} else {
			/* Not the first S/G entry; all data from buffer will
			 * be added in an skb fragment; fragment index is offset
			 * by one since first S/G entry was incorporated in the
			 * linear part of the skb.
			 *
			 * Caution: 'page' may be a tail page.
			 */
			page = FUNC23(sg_vaddr);
			head_page = FUNC22(sg_vaddr);

			/* Compute offset in (possibly tail) page */
			page_offset = ((unsigned long)sg_vaddr &
					(PAGE_SIZE - 1)) +
				(FUNC7(page) - FUNC7(head_page));
			/* page_offset only refers to the beginning of sgt[i];
			 * but the buffer itself may have an internal offset.
			 */
			frag_off = FUNC13(&sgt[i]) + page_offset;
			frag_len = FUNC12(&sgt[i]);
			/* skb_add_rx_frag() does no checking on the page; if
			 * we pass it a tail page, we'll end up with
			 * bad page accounting and eventually with segafults.
			 */
			FUNC17(skb, i - 1, head_page, frag_off,
					frag_len, dpaa_bp->size);
		}
		/* Update the pool count for the current {cpu x bpool} */
		(*count_ptr)--;

		if (FUNC15(&sgt[i]))
			break;
	}
	FUNC3(i == DPAA_SGT_MAX_ENTRIES, "No final bit on SGT\n");

	/* free the SG table buffer */
	FUNC18(vaddr);

	return skb;

free_buffers:
	/* compensate sw bpool counter changes */
	for (i--; i >= 0; i--) {
		dpaa_bp = FUNC6(sgt[i].bpid);
		if (dpaa_bp) {
			count_ptr = FUNC21(dpaa_bp->percpu_count);
			(*count_ptr)++;
		}
	}
	/* free all the SG entries */
	for (i = 0; i < DPAA_SGT_MAX_ENTRIES ; i++) {
		sg_addr = FUNC11(&sgt[i]);
		sg_vaddr = FUNC8(sg_addr);
		FUNC18(sg_vaddr);
		dpaa_bp = FUNC6(sgt[i].bpid);
		if (dpaa_bp) {
			count_ptr = FUNC21(dpaa_bp->percpu_count);
			(*count_ptr)--;
		}

		if (FUNC15(&sgt[i]))
			break;
	}
	/* free the SGT fragment */
	FUNC18(vaddr);

	return NULL;
}