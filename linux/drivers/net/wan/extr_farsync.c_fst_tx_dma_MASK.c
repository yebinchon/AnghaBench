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
typedef  int u32 ;
struct fst_card_info {int dmatx_in_progress; scalar_t__ pci_conf; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_ASS ; 
 int /*<<< orphan*/  DBG_TX ; 
 scalar_t__ DMACSR1 ; 
 scalar_t__ DMADPR1 ; 
 scalar_t__ DMALADR1 ; 
 scalar_t__ DMAPADR1 ; 
 scalar_t__ DMASIZ1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC3(struct fst_card_info *card, dma_addr_t dma, u32 mem, int len)
{
	/*
	 * This routine will setup the DMA and start it.
	 */

	FUNC0(DBG_TX, "In fst_tx_dma %x %x %d\n", (u32)dma, mem, len);
	if (card->dmatx_in_progress) {
		FUNC0(DBG_ASS, "In fst_tx_dma while dma in progress\n");
	}

	FUNC2(dma, card->pci_conf + DMAPADR1);	/* Copy from here */
	FUNC2(mem, card->pci_conf + DMALADR1);	/* to here */
	FUNC2(len, card->pci_conf + DMASIZ1);	/* for this length */
	FUNC2(0x000000004, card->pci_conf + DMADPR1);	/* In this direction */

	/*
	 * We use the dmatx_in_progress to flag the channel as busy
	 */
	card->dmatx_in_progress = 1;
	FUNC1(0x03, card->pci_conf + DMACSR1);	/* Start the transfer */
}