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
struct z8530_channel {int /*<<< orphan*/  dma_tx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct z8530_channel*) ; 

__attribute__((used)) static void FUNC3(struct z8530_channel *chan)
{
	if(!chan->dma_tx)
	{
		FUNC1("Hey who turned the DMA off?\n");
		FUNC2(chan);
		return;
	}
	/* This shouldn't occur in DMA mode */
	FUNC0("DMA tx - bogus event!\n");
	FUNC2(chan);
}