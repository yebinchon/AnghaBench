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
typedef  size_t u32 ;
struct happy_meal_txd {int /*<<< orphan*/  tx_flags; int /*<<< orphan*/  tx_addr; } ;
struct happy_meal {int /*<<< orphan*/  dma_dev; TYPE_1__* happy_block; } ;
struct TYPE_2__ {struct happy_meal_txd* happy_meal_txd; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 size_t FUNC0 (size_t) ; 
 size_t TXFLAG_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (struct happy_meal*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct happy_meal *hp, u32 first_mapping,
				 u32 first_len, u32 first_entry, u32 entry)
{
	struct happy_meal_txd *txbase = &hp->happy_block->happy_meal_txd[0];

	FUNC2(hp->dma_dev, first_mapping, first_len, DMA_TO_DEVICE);

	first_entry = FUNC0(first_entry);
	while (first_entry != entry) {
		struct happy_meal_txd *this = &txbase[first_entry];
		u32 addr, len;

		addr = FUNC3(hp, &this->tx_addr);
		len = FUNC3(hp, &this->tx_flags);
		len &= TXFLAG_SIZE;
		FUNC1(hp->dma_dev, addr, len, DMA_TO_DEVICE);
	}
}