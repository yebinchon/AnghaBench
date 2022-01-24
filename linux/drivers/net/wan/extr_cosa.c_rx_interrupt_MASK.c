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
struct cosa_data {int rxsize; int nchannels; int /*<<< orphan*/  lock; int /*<<< orphan*/  dma; int /*<<< orphan*/ * bouncebuf; int /*<<< orphan*/ * rxbuf; TYPE_1__* rxchan; int /*<<< orphan*/  num; TYPE_1__* chan; int /*<<< orphan*/  name; int /*<<< orphan*/  rxtx; } ;
struct TYPE_3__ {int num; int /*<<< orphan*/ * (* setup_rx ) (TYPE_1__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_MODE_READ ; 
 int /*<<< orphan*/  DRIVER_RX_READY ; 
 int /*<<< orphan*/  IRQBIT ; 
 int /*<<< orphan*/  RXBIT ; 
 int SR_RX_DMA_ENA ; 
 int SR_TX_RDY ; 
 int SR_USR_INT_ENA ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct cosa_data*) ; 
 int FUNC5 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct cosa_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct cosa_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct cosa_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cosa_data*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct cosa_data*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct cosa_data*) ; 
 int /*<<< orphan*/  FUNC17 (unsigned long) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/ * FUNC24 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC27(struct cosa_data *cosa, int status)
{
	unsigned long flags;
#ifdef DEBUG_IRQS
	pr_info("cosa%d: SR_UP_REQUEST\n", cosa->num);
#endif

	FUNC22(&cosa->lock, flags);
	FUNC18(RXBIT, &cosa->rxtx);

	if (FUNC13(cosa)) {
		if (!FUNC25(IRQBIT, &cosa->rxtx)) {
			FUNC18(IRQBIT, &cosa->rxtx);
			FUNC16(cosa);
			cosa->rxsize = FUNC5(cosa) <<8;
#ifdef DEBUG_IO
			debug_data_in(cosa, cosa->rxsize >> 8);
#endif
			FUNC23(&cosa->lock, flags);
			return;
		} else {
			FUNC1(IRQBIT, &cosa->rxtx);
			cosa->rxsize |= FUNC5(cosa) & 0xff;
#ifdef DEBUG_IO
			debug_data_in(cosa, cosa->rxsize & 0xff);
#endif
#if 0
			pr_info("cosa%d: receive rxsize = (0x%04x)\n",
				cosa->num, cosa->rxsize);
#endif
		}
	} else {
		cosa->rxsize = FUNC4(cosa);
#ifdef DEBUG_IO
		debug_data_in(cosa, cosa->rxsize);
#endif
#if 0
		pr_info("cosa%d: receive rxsize = (0x%04x)\n",
			cosa->num, cosa->rxsize);
#endif
	}
	if (((cosa->rxsize & 0xe000) >> 13) >= cosa->nchannels) {
		FUNC15("%s: rx for unknown channel (0x%04x)\n",
			cosa->name, cosa->rxsize);
		FUNC23(&cosa->lock, flags);
		goto reject;
	}
	cosa->rxchan = cosa->chan + ((cosa->rxsize & 0xe000) >> 13);
	cosa->rxsize &= 0x1fff;
	FUNC23(&cosa->lock, flags);

	cosa->rxbuf = NULL;
	if (cosa->rxchan->setup_rx)
		cosa->rxbuf = cosa->rxchan->setup_rx(cosa->rxchan, cosa->rxsize);

	if (!cosa->rxbuf) {
reject:		/* Reject the packet */
		FUNC14("cosa%d: rejecting packet on channel %d\n",
			cosa->num, cosa->rxchan->num);
		cosa->rxbuf = cosa->bouncebuf;
	}

	/* start the DMA */
	flags = FUNC0();
	FUNC11(cosa->dma);
	FUNC2(cosa->dma);
	FUNC21(cosa->dma, DMA_MODE_READ);
	if (FUNC3(cosa->rxchan, cosa->rxbuf, cosa->rxsize & 0x1fff)) {
		FUNC19(cosa->dma, FUNC26(cosa->rxbuf));
	} else {
		FUNC19(cosa->dma, FUNC26(cosa->bouncebuf));
	}
	FUNC20(cosa->dma, (cosa->rxsize&0x1fff));
	FUNC12(cosa->dma);
	FUNC17(flags);
	FUNC22(&cosa->lock, flags);
	FUNC7(cosa, SR_RX_DMA_ENA|SR_USR_INT_ENA);
	if (!FUNC13(cosa) && (status & SR_TX_RDY))
		FUNC6(cosa, DRIVER_RX_READY);
#ifdef DEBUG_IO
	debug_status_out(cosa, SR_RX_DMA_ENA|SR_USR_INT_ENA);
	if (!is_8bit(cosa) && (status & SR_TX_RDY))
		debug_data_cmd(cosa, DRIVER_RX_READY);
#endif
	FUNC23(&cosa->lock, flags);
}