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
struct rx_ring_info {int rx_channel; int mbox_dma; int rbr_dma; int rcr_dma; int rbr_index; scalar_t__ rcr_timeout; scalar_t__ rcr_pkt_threshold; scalar_t__ rcr_table_size; scalar_t__ rbr_table_size; } ;
struct niu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int RBR_CFIG_A_LEN_SHIFT ; 
 int RBR_CFIG_A_STADDR ; 
 int RBR_CFIG_A_STADDR_BASE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int RCRCFIG_A_LEN_SHIFT ; 
 int RCRCFIG_A_STADDR ; 
 int RCRCFIG_A_STADDR_BASE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int RCRCFIG_B_ENTOUT ; 
 int RCRCFIG_B_PTHRES_SHIFT ; 
 int RCRCFIG_B_TIMEOUT_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int RXDMA_CFIG2_FULL_HDR ; 
 int RXDMA_CFIG2_MBADDR_L ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int RX_DMA_CTL_STAT_MEX ; 
 int RX_DMA_CTL_STAT_RBR_EMPTY ; 
 int RX_DMA_CTL_STAT_RCRTHRES ; 
 int RX_DMA_CTL_STAT_RCRTO ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int RX_DMA_ENT_MSK_RBR_EMPTY ; 
 int FUNC9 (struct rx_ring_info*,int*) ; 
 int FUNC10 (struct niu*,int,int) ; 
 int FUNC11 (struct niu*,int) ; 
 int FUNC12 (struct niu*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct niu*,struct rx_ring_info*) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC16(struct niu *np, struct rx_ring_info *rp)
{
	int err, channel = rp->rx_channel;
	u64 val;

	err = FUNC12(np, channel);
	if (err)
		return err;

	err = FUNC11(np, channel);
	if (err)
		return err;

	FUNC13(np, rp);

	FUNC15(FUNC8(channel), RX_DMA_ENT_MSK_RBR_EMPTY);
	FUNC15(FUNC7(channel),
	     (RX_DMA_CTL_STAT_MEX |
	      RX_DMA_CTL_STAT_RCRTHRES |
	      RX_DMA_CTL_STAT_RCRTO |
	      RX_DMA_CTL_STAT_RBR_EMPTY));
	FUNC15(FUNC5(channel), rp->mbox_dma >> 32);
	FUNC15(FUNC6(channel),
	     ((rp->mbox_dma & RXDMA_CFIG2_MBADDR_L) |
	      RXDMA_CFIG2_FULL_HDR));
	FUNC15(FUNC0(channel),
	     ((u64)rp->rbr_table_size << RBR_CFIG_A_LEN_SHIFT) |
	     (rp->rbr_dma & (RBR_CFIG_A_STADDR_BASE | RBR_CFIG_A_STADDR)));
	err = FUNC9(rp, &val);
	if (err)
		return err;
	FUNC15(FUNC1(channel), val);
	FUNC15(FUNC3(channel),
	     ((u64)rp->rcr_table_size << RCRCFIG_A_LEN_SHIFT) |
	     (rp->rcr_dma & (RCRCFIG_A_STADDR_BASE | RCRCFIG_A_STADDR)));
	FUNC15(FUNC4(channel),
	     ((u64)rp->rcr_pkt_threshold << RCRCFIG_B_PTHRES_SHIFT) |
	     RCRCFIG_B_ENTOUT |
	     ((u64)rp->rcr_timeout << RCRCFIG_B_TIMEOUT_SHIFT));

	err = FUNC10(np, channel, 1);
	if (err)
		return err;

	FUNC15(FUNC2(channel), rp->rbr_index);

	val = FUNC14(FUNC7(channel));
	val |= RX_DMA_CTL_STAT_RBR_EMPTY;
	FUNC15(FUNC7(channel), val);

	return 0;
}