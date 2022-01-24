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
struct dma_desc {int /*<<< orphan*/  des1; int /*<<< orphan*/  des0; } ;

/* Variables and functions */
 scalar_t__ BUF_SIZE_2KiB ; 
 int RDES0_OWN ; 
 int RDES1_BUFFER1_SIZE_MASK ; 
 int RDES1_DISABLE_IC ; 
 int STMMAC_CHAIN_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_desc*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_desc*,int,int) ; 

__attribute__((used)) static void FUNC4(struct dma_desc *p, int disable_rx_ic, int mode,
			       int end, int bfsize)
{
	int bfsize1;

	p->des0 |= FUNC0(RDES0_OWN);

	bfsize1 = FUNC1(bfsize, BUF_SIZE_2KiB - 1);
	p->des1 |= FUNC0(bfsize1 & RDES1_BUFFER1_SIZE_MASK);

	if (mode == STMMAC_CHAIN_MODE)
		FUNC2(p, end);
	else
		FUNC3(p, end, bfsize);

	if (disable_rx_ic)
		p->des1 |= FUNC0(RDES1_DISABLE_IC);
}