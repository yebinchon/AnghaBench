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
struct bgmac_slot_info {int /*<<< orphan*/  dma_addr; } ;
struct bgmac_dma_ring {struct bgmac_dma_desc* cpu_base; struct bgmac_slot_info* slots; } ;
struct bgmac_dma_desc {void* ctl1; void* ctl0; void* addr_high; void* addr_low; } ;
struct bgmac {int dummy; } ;

/* Variables and functions */
 int BGMAC_DESC_CTL0_EOT ; 
 int BGMAC_DESC_CTL1_LEN ; 
 int BGMAC_TX_RING_SLOTS ; 
 void* FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct bgmac *bgmac, struct bgmac_dma_ring *ring,
		     int i, int len, u32 ctl0)
{
	struct bgmac_slot_info *slot;
	struct bgmac_dma_desc *dma_desc;
	u32 ctl1;

	if (i == BGMAC_TX_RING_SLOTS - 1)
		ctl0 |= BGMAC_DESC_CTL0_EOT;

	ctl1 = len & BGMAC_DESC_CTL1_LEN;

	slot = &ring->slots[i];
	dma_desc = &ring->cpu_base[i];
	dma_desc->addr_low = FUNC0(FUNC1(slot->dma_addr));
	dma_desc->addr_high = FUNC0(FUNC2(slot->dma_addr));
	dma_desc->ctl0 = FUNC0(ctl0);
	dma_desc->ctl1 = FUNC0(ctl1);
}