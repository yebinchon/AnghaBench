#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct z8530_channel {int status; int dcdcheck; int* regs; TYPE_3__* netdevice; TYPE_2__* dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_fifo_errors; } ;
struct TYPE_7__ {TYPE_1__ stats; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_RES ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  RES_EXT_INT ; 
 int /*<<< orphan*/  RES_H_IUS ; 
 int RxENABLE ; 
 int TxEOM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct z8530_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct z8530_channel*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct z8530_channel*) ; 
 int /*<<< orphan*/  FUNC7 (struct z8530_channel*) ; 

__attribute__((used)) static void FUNC8(struct z8530_channel *chan)
{
	u8 status, altered;

	status = FUNC3(chan, R0);
	altered = chan->status ^ status;

	chan->status = status;

	if (status & TxEOM) {
/*		printk("%s: Tx underrun.\n", chan->dev->name); */
		chan->netdevice->stats.tx_fifo_errors++;
		FUNC4(chan, ERR_RES);
		FUNC7(chan);
	}

	if (altered & chan->dcdcheck)
	{
		if (status & chan->dcdcheck) {
			FUNC2("%s: DCD raised\n", chan->dev->name);
			FUNC5(chan, R3, chan->regs[3] | RxENABLE);
			if (chan->netdevice)
				FUNC1(chan->netdevice);
		} else {
			FUNC2("%s: DCD lost\n", chan->dev->name);
			FUNC5(chan, R3, chan->regs[3] & ~RxENABLE);
			FUNC6(chan);
			if (chan->netdevice)
				FUNC0(chan->netdevice);
		}

	}
	FUNC4(chan, RES_EXT_INT);
	FUNC4(chan, RES_H_IUS);
}