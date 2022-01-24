#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_aborted_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct TYPE_4__ {int (* status ) (struct net_device*) ;int /*<<< orphan*/  (* intmask ) (struct net_device*,int) ;int /*<<< orphan*/  (* command ) (struct net_device*,int) ;} ;
struct arcnet_local {int timed_out; int cur_tx; int intmask; scalar_t__ last_timeout; int /*<<< orphan*/  lasttrans_dest; int /*<<< orphan*/  lock; TYPE_2__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_EXTRA ; 
 int EXCNAKflag ; 
 int HZ ; 
 int NOTXcmd ; 
 int TXFREEflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct net_device*,char*,char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 struct arcnet_local* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

void FUNC10(struct net_device *dev)
{
	unsigned long flags;
	struct arcnet_local *lp = FUNC1(dev);
	int status = lp->hw.status(dev);
	char *msg;

	FUNC3(&lp->lock, flags);
	if (status & TXFREEflag) {	/* transmit _DID_ finish */
		msg = " - missed IRQ?";
	} else {
		msg = "";
		dev->stats.tx_aborted_errors++;
		lp->timed_out = 1;
		lp->hw.command(dev, NOTXcmd | (lp->cur_tx << 3));
	}
	dev->stats.tx_errors++;

	/* make sure we didn't miss a TX or a EXC NAK IRQ */
	lp->hw.intmask(dev, 0);
	lp->intmask |= TXFREEflag | EXCNAKflag;
	lp->hw.intmask(dev, lp->intmask);

	FUNC4(&lp->lock, flags);

	if (FUNC9(jiffies, lp->last_timeout + 10 * HZ)) {
		FUNC0(D_EXTRA, dev, "tx timed out%s (status=%Xh, intmask=%Xh, dest=%02Xh)\n",
			   msg, status, lp->intmask, lp->lasttrans_dest);
		lp->last_timeout = jiffies;
	}

	if (lp->cur_tx == -1)
		FUNC2(dev);
}