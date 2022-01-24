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
struct rx_ring_info {int /*<<< orphan*/  rx_channel; } ;
struct niu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int RX_DMA_CTL_STAT_BYTE_EN_BUS ; 
 int RX_DMA_CTL_STAT_CFIGLOGPAGE ; 
 int RX_DMA_CTL_STAT_CONFIG_ERR ; 
 int RX_DMA_CTL_STAT_DC_FIFO_ERR ; 
 int RX_DMA_CTL_STAT_RBRFULL ; 
 int RX_DMA_CTL_STAT_RBRLOGPAGE ; 
 int RX_DMA_CTL_STAT_RBR_PRE_PAR ; 
 int RX_DMA_CTL_STAT_RBR_TMOUT ; 
 int RX_DMA_CTL_STAT_RCRFULL ; 
 int RX_DMA_CTL_STAT_RCRINCON ; 
 int RX_DMA_CTL_STAT_RCR_ACK_ERR ; 
 int RX_DMA_CTL_STAT_RCR_SHA_PAR ; 
 int RX_DMA_CTL_STAT_RSP_CNT_ERR ; 
 int RX_DMA_CTL_STAT_RSP_DAT_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct niu *np, struct rx_ring_info *rp,
				  u64 stat)
{
	FUNC0(np->dev, "RX channel %u errors ( ", rp->rx_channel);

	if (stat & RX_DMA_CTL_STAT_RBR_TMOUT)
		FUNC1("RBR_TMOUT ");
	if (stat & RX_DMA_CTL_STAT_RSP_CNT_ERR)
		FUNC1("RSP_CNT ");
	if (stat & RX_DMA_CTL_STAT_BYTE_EN_BUS)
		FUNC1("BYTE_EN_BUS ");
	if (stat & RX_DMA_CTL_STAT_RSP_DAT_ERR)
		FUNC1("RSP_DAT ");
	if (stat & RX_DMA_CTL_STAT_RCR_ACK_ERR)
		FUNC1("RCR_ACK ");
	if (stat & RX_DMA_CTL_STAT_RCR_SHA_PAR)
		FUNC1("RCR_SHA_PAR ");
	if (stat & RX_DMA_CTL_STAT_RBR_PRE_PAR)
		FUNC1("RBR_PRE_PAR ");
	if (stat & RX_DMA_CTL_STAT_CONFIG_ERR)
		FUNC1("CONFIG ");
	if (stat & RX_DMA_CTL_STAT_RCRINCON)
		FUNC1("RCRINCON ");
	if (stat & RX_DMA_CTL_STAT_RCRFULL)
		FUNC1("RCRFULL ");
	if (stat & RX_DMA_CTL_STAT_RBRFULL)
		FUNC1("RBRFULL ");
	if (stat & RX_DMA_CTL_STAT_RBRLOGPAGE)
		FUNC1("RBRLOGPAGE ");
	if (stat & RX_DMA_CTL_STAT_CFIGLOGPAGE)
		FUNC1("CFIGLOGPAGE ");
	if (stat & RX_DMA_CTL_STAT_DC_FIFO_ERR)
		FUNC1("DC_FIDO ");

	FUNC1(")\n");
}