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
typedef  int u16 ;
struct xge_raw_desc {void* m1; void* m0; } ;
struct xge_desc_ring {int dma_addr; struct xge_raw_desc* raw_desc; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  E ; 
 int /*<<< orphan*/  NEXT_DESC_ADDRH ; 
 int /*<<< orphan*/  NEXT_DESC_ADDRL ; 
 int /*<<< orphan*/  PKT_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int SLOT_EMPTY ; 
 int XGENE_ENET_DESC_SIZE ; 
 int XGENE_ENET_NUM_DESC ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int) ; 

void FUNC3(struct xge_desc_ring *ring)
{
	struct xge_raw_desc *raw_desc;
	dma_addr_t dma_h, next_dma;
	u16 offset;
	int i;

	for (i = 0; i < XGENE_ENET_NUM_DESC; i++) {
		raw_desc = &ring->raw_desc[i];

		offset = (i + 1) & (XGENE_ENET_NUM_DESC - 1);
		next_dma = ring->dma_addr + (offset * XGENE_ENET_DESC_SIZE);

		raw_desc->m0 = FUNC1(FUNC0(E, 1) |
					   FUNC0(PKT_SIZE, SLOT_EMPTY));
		dma_h = FUNC2(next_dma);
		raw_desc->m1 = FUNC1(FUNC0(NEXT_DESC_ADDRL, next_dma) |
					   FUNC0(NEXT_DESC_ADDRH, dma_h));
	}
}