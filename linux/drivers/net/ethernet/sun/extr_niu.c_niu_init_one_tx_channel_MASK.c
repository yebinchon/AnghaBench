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
typedef  int u64 ;
typedef  int u32 ;
struct tx_ring_info {int tx_channel; int max_burst; int descr_dma; int pending; int mbox_dma; scalar_t__ last_pkt_cnt; } ;
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int TXDMA_MBH_MBADDR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int TXDMA_MBL_MBADDR ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int TX_RNG_CFIG_LEN_SHIFT ; 
 int TX_RNG_CFIG_STADDR ; 
 int TX_RNG_CFIG_STADDR_BASE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,unsigned long long) ; 
 int FUNC7 (struct niu*,int) ; 
 int FUNC8 (struct niu*,int) ; 
 int FUNC9 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC11(struct niu *np, struct tx_ring_info *rp)
{
	int err, channel = rp->tx_channel;
	u64 val, ring_len;

	err = FUNC9(np, channel);
	if (err)
		return err;

	err = FUNC8(np, channel);
	if (err)
		return err;

	err = FUNC7(np, channel);
	if (err)
		return err;

	FUNC10(FUNC0(channel), rp->max_burst);
	FUNC10(FUNC4(channel), 0);

	if (rp->descr_dma & ~(TX_RNG_CFIG_STADDR_BASE |
			      TX_RNG_CFIG_STADDR)) {
		FUNC6(np->dev, "TX ring channel %d DMA addr (%llx) is not aligned\n",
			   channel, (unsigned long long)rp->descr_dma);
		return -EINVAL;
	}

	/* The length field in TX_RNG_CFIG is measured in 64-byte
	 * blocks.  rp->pending is the number of TX descriptors in
	 * our ring, 8 bytes each, thus we divide by 8 bytes more
	 * to get the proper value the chip wants.
	 */
	ring_len = (rp->pending / 8);

	val = ((ring_len << TX_RNG_CFIG_LEN_SHIFT) |
	       rp->descr_dma);
	FUNC10(FUNC5(channel), val);

	if (((rp->mbox_dma >> 32) & ~TXDMA_MBH_MBADDR) ||
	    ((u32)rp->mbox_dma & ~TXDMA_MBL_MBADDR)) {
		FUNC6(np->dev, "TX ring channel %d MBOX addr (%llx) has invalid bits\n",
			    channel, (unsigned long long)rp->mbox_dma);
		return -EINVAL;
	}
	FUNC10(FUNC1(channel), rp->mbox_dma >> 32);
	FUNC10(FUNC2(channel), rp->mbox_dma & TXDMA_MBL_MBADDR);

	FUNC10(FUNC3(channel), 0);

	rp->last_pkt_cnt = 0;

	return 0;
}