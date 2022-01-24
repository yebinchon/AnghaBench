#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct cosa_data {int txchan; int rxsize; int* rxbuf; int* bouncebuf; int /*<<< orphan*/  lock; scalar_t__ rxtx; int /*<<< orphan*/  num; int /*<<< orphan*/  rxbitmap; TYPE_1__* rxchan; int /*<<< orphan*/  txbitmap; int /*<<< orphan*/  txsize; struct channel_data* chan; int /*<<< orphan*/  dma; } ;
struct channel_data {int /*<<< orphan*/  num; scalar_t__ (* tx_done ) (struct channel_data*,int /*<<< orphan*/ ) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  num; scalar_t__ (* rx_done ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  RXBIT ; 
 int /*<<< orphan*/  TXBIT ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC13 (struct channel_data*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static inline void FUNC16(struct cosa_data *cosa, int status)
{
	unsigned long flags, flags1;
	FUNC11(&cosa->lock, flags);
	flags1 = FUNC0();
	FUNC4(cosa->dma);
	FUNC2(cosa->dma);
	FUNC10(flags1);
	if (FUNC15(TXBIT, &cosa->rxtx)) {
		struct channel_data *chan = cosa->chan+cosa->txchan;
		if (chan->tx_done)
			if (chan->tx_done(chan, cosa->txsize))
				FUNC1(chan->num, &cosa->txbitmap);
	} else if (FUNC15(RXBIT, &cosa->rxtx)) {
#ifdef DEBUG_DATA
	{
		int i;
		pr_info("cosa%dc%d: done rx(0x%x)",
			cosa->num, cosa->rxchan->num, cosa->rxsize);
		for (i=0; i<cosa->rxsize; i++)
			pr_cont(" %02x", cosa->rxbuf[i]&0xff);
		pr_cont("\n");
	}
#endif
		/* Packet for unknown channel? */
		if (cosa->rxbuf == cosa->bouncebuf)
			goto out;
		if (!FUNC3(cosa->rxchan, cosa->rxbuf, cosa->rxsize))
			FUNC5(cosa->rxbuf, cosa->bouncebuf, cosa->rxsize);
		if (cosa->rxchan->rx_done)
			if (cosa->rxchan->rx_done(cosa->rxchan))
				FUNC1(cosa->rxchan->num, &cosa->rxbitmap);
	} else {
		FUNC8("cosa%d: unexpected EOT interrupt\n", cosa->num);
	}
	/*
	 * Clear the RXBIT, TXBIT and IRQBIT (the latest should be
	 * cleared anyway). We should do it as soon as possible
	 * so that we can tell the COSA we are done and to give it a time
	 * for recovery.
	 */
out:
	cosa->rxtx = 0;
	FUNC9(cosa);
	FUNC12(&cosa->lock, flags);
}