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
struct solo_p2m_desc {int ctrl; int dma_addr; int ext_addr; int /*<<< orphan*/  cfg; } ;
typedef  int dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  SOLO_P2M_BURST_256 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int SOLO_P2M_TRANS_ON ; 
 int SOLO_P2M_WRITE ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(struct solo_p2m_desc *desc, int wr,
			dma_addr_t dma_addr, u32 ext_addr, u32 size,
			int repeat, u32 ext_size)
{
	FUNC5(dma_addr & 0x03);
	FUNC5(!size);

	desc->cfg = FUNC1(size >> 2);
	desc->ctrl = FUNC0(SOLO_P2M_BURST_256) |
		(wr ? SOLO_P2M_WRITE : 0) | SOLO_P2M_TRANS_ON;

	if (repeat) {
		desc->cfg |= FUNC2(ext_size >> 2);
		desc->ctrl |=  FUNC3(size >> 2) |
			 FUNC4(repeat);
	}

	desc->dma_addr = dma_addr;
	desc->ext_addr = ext_addr;
}