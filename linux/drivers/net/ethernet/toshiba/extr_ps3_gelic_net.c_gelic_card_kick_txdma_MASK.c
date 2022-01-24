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
struct gelic_descr {int /*<<< orphan*/  bus_addr; } ;
struct gelic_card {int tx_dma_progress; } ;

/* Variables and functions */
 scalar_t__ GELIC_DESCR_DMA_CARDOWNED ; 
 int /*<<< orphan*/  FUNC0 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct gelic_card*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC4 (struct gelic_descr*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct gelic_card *card,
				 struct gelic_descr *descr)
{
	int status = 0;

	if (card->tx_dma_progress)
		return 0;

	if (FUNC4(descr) == GELIC_DESCR_DMA_CARDOWNED) {
		card->tx_dma_progress = 1;
		status = FUNC5(FUNC0(card), FUNC2(card),
					      descr->bus_addr, 0);
		if (status) {
			card->tx_dma_progress = 0;
			FUNC3(FUNC1(card), "lv1_net_start_txdma failed," \
				 "status=%d\n", status);
		}
	}
	return status;
}