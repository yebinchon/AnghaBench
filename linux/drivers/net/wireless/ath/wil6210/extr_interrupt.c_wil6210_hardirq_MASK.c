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
typedef  int u32 ;
struct TYPE_2__ {scalar_t__ (* irq_rx ) (int,void*) ;scalar_t__ (* irq_tx ) (int,void*) ;} ;
struct wil6210_priv {TYPE_1__ txrx_ops; } ;
typedef  scalar_t__ irqreturn_t ;

/* Variables and functions */
 int BIT_DMA_PSEUDO_CAUSE_MISC ; 
 int BIT_DMA_PSEUDO_CAUSE_RX ; 
 int BIT_DMA_PSEUDO_CAUSE_TX ; 
 scalar_t__ IRQ_HANDLED ; 
 scalar_t__ IRQ_NONE ; 
 scalar_t__ IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  RGF_DMA_PSEUDO_CAUSE ; 
 scalar_t__ FUNC0 (int,void*) ; 
 scalar_t__ FUNC1 (int,void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (struct wil6210_priv*,int) ; 
 scalar_t__ FUNC5 (int,void*) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct wil6210_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct wil6210_priv*,char*,int) ; 
 int FUNC9 (struct wil6210_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *cookie)
{
	irqreturn_t rc = IRQ_HANDLED;
	struct wil6210_priv *wil = cookie;
	u32 pseudo_cause = FUNC9(wil, RGF_DMA_PSEUDO_CAUSE);

	/**
	 * pseudo_cause is Clear-On-Read, no need to ACK
	 */
	if (FUNC3((pseudo_cause == 0) || ((pseudo_cause & 0xff) == 0xff)))
		return IRQ_NONE;

	/* IRQ mask debug */
	if (FUNC3(FUNC4(wil, pseudo_cause)))
		return IRQ_NONE;

	FUNC2(pseudo_cause);
	FUNC8(wil, "Pseudo IRQ 0x%08x\n", pseudo_cause);

	FUNC6(wil);

	/* Discover real IRQ cause
	 * There are 2 possible phases for every IRQ:
	 * - hard IRQ handler called right here
	 * - threaded handler called later
	 *
	 * Hard IRQ handler reads and clears ISR.
	 *
	 * If threaded handler requested, hard IRQ handler
	 * returns IRQ_WAKE_THREAD and saves ISR register value
	 * for the threaded handler use.
	 *
	 * voting for wake thread - need at least 1 vote
	 */
	if ((pseudo_cause & BIT_DMA_PSEUDO_CAUSE_RX) &&
	    (wil->txrx_ops.irq_rx(irq, cookie) == IRQ_WAKE_THREAD))
		rc = IRQ_WAKE_THREAD;

	if ((pseudo_cause & BIT_DMA_PSEUDO_CAUSE_TX) &&
	    (wil->txrx_ops.irq_tx(irq, cookie) == IRQ_WAKE_THREAD))
		rc = IRQ_WAKE_THREAD;

	if ((pseudo_cause & BIT_DMA_PSEUDO_CAUSE_MISC) &&
	    (FUNC5(irq, cookie) == IRQ_WAKE_THREAD))
		rc = IRQ_WAKE_THREAD;

	/* if thread is requested, it will unmask IRQ */
	if (rc != IRQ_WAKE_THREAD)
		FUNC7(wil);

	return rc;
}