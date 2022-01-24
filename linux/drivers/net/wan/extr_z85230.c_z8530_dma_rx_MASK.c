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
typedef  int u8 ;
struct z8530_channel {scalar_t__ rxdma_on; } ;

/* Variables and functions */
 int END_FR ; 
 int /*<<< orphan*/  ERR_RES ; 
 int /*<<< orphan*/  R1 ; 
 int /*<<< orphan*/  R6 ; 
 int /*<<< orphan*/  R7 ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 int FUNC0 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct z8530_channel*) ; 
 int /*<<< orphan*/  FUNC3 (struct z8530_channel*) ; 

__attribute__((used)) static void FUNC4(struct z8530_channel *chan)
{
	if(chan->rxdma_on)
	{
		/* Special condition check only */
		u8 status;
	
		FUNC0(chan, R7);
		FUNC0(chan, R6);
		
		status=FUNC0(chan, R1);
	
		if(status&END_FR)
		{
			FUNC3(chan);	/* Fire up the next one */
		}		
		FUNC1(chan, ERR_RES);
		FUNC1(chan, RES_H_IUS);
	}
	else
	{
		/* DMA is off right now, drain the slow way */
		FUNC2(chan);
	}	
}