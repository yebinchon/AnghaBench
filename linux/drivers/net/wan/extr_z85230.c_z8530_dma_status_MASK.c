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
typedef  int u8 ;
struct z8530_channel {int status; int dcdcheck; int* regs; scalar_t__ netdevice; TYPE_1__* dev; scalar_t__ txdma_on; int /*<<< orphan*/  txdma; scalar_t__ dma_tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  RES_EXT_INT ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 int RxENABLE ; 
 int TxEOM ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct z8530_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct z8530_channel*) ; 
 int /*<<< orphan*/  FUNC11 (struct z8530_channel*) ; 

__attribute__((used)) static void FUNC12(struct z8530_channel *chan)
{
	u8 status, altered;

	status=FUNC6(chan, R0);
	altered=chan->status^status;
	
	chan->status=status;


	if(chan->dma_tx)
	{
		if(status&TxEOM)
		{
			unsigned long flags;
	
			flags=FUNC0();
			FUNC2(chan->txdma);
			FUNC1(chan->txdma);	
			chan->txdma_on=0;
			FUNC7(flags);
			FUNC11(chan);
		}
	}

	if (altered & chan->dcdcheck)
	{
		if (status & chan->dcdcheck) {
			FUNC5("%s: DCD raised\n", chan->dev->name);
			FUNC9(chan, R3, chan->regs[3] | RxENABLE);
			if (chan->netdevice)
				FUNC4(chan->netdevice);
		} else {
			FUNC5("%s: DCD lost\n", chan->dev->name);
			FUNC9(chan, R3, chan->regs[3] & ~RxENABLE);
			FUNC10(chan);
			if (chan->netdevice)
				FUNC3(chan->netdevice);
		}
	}

	FUNC8(chan, RES_EXT_INT);
	FUNC8(chan, RES_H_IUS);
}