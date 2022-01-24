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
struct dma_desc {int /*<<< orphan*/  des0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETDES0_OWN ; 
 int STMMAC_CHAIN_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_desc*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_desc*,int) ; 

__attribute__((used)) static void FUNC3(struct dma_desc *p, int mode, int end)
{
	p->des0 &= FUNC0(~ETDES0_OWN);
	if (mode == STMMAC_CHAIN_MODE)
		FUNC1(p);
	else
		FUNC2(p, end);
}