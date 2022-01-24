#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ tx_a0_start; scalar_t__ tx_s_start; scalar_t__ tx_s_size; scalar_t__ rx2_fifo_start; } ;
struct TYPE_5__ {TYPE_1__ fifo; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_CMDREG2 ; 
 int /*<<< orphan*/  FM_EAA0 ; 
 int /*<<< orphan*/  FM_EAS ; 
 scalar_t__ FM_IRSTQ ; 
 int /*<<< orphan*/  FM_RPXA0 ; 
 int /*<<< orphan*/  FM_RPXS ; 
 int /*<<< orphan*/  FM_SWPXA0 ; 
 int /*<<< orphan*/  FM_SWPXS ; 
 int /*<<< orphan*/  FM_WPXA0 ; 
 int /*<<< orphan*/  FM_WPXS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct s_smc *smc)
{
	FUNC1(FUNC0(FM_CMDREG2),FM_IRSTQ) ;	/* reset transmit queues */

	/*
	 * initialize the pointer for asynchronous transmit queue
	 */
	FUNC1(FUNC0(FM_RPXA0),smc->hw.fp.fifo.tx_a0_start) ;	/* RPXA0 */
	FUNC1(FUNC0(FM_SWPXA0),smc->hw.fp.fifo.tx_a0_start) ;	/* SWPXA0 */
	FUNC1(FUNC0(FM_WPXA0),smc->hw.fp.fifo.tx_a0_start) ;	/* WPXA0 */
	FUNC1(FUNC0(FM_EAA0),smc->hw.fp.fifo.rx2_fifo_start-1) ;	/* EAA0 */

	/*
	 * initialize the pointer for synchronous transmit queue
	 */
	if (smc->hw.fp.fifo.tx_s_size) {
		FUNC1(FUNC0(FM_RPXS),smc->hw.fp.fifo.tx_s_start) ;
		FUNC1(FUNC0(FM_SWPXS),smc->hw.fp.fifo.tx_s_start) ;
		FUNC1(FUNC0(FM_WPXS),smc->hw.fp.fifo.tx_s_start) ;
		FUNC1(FUNC0(FM_EAS),smc->hw.fp.fifo.tx_a0_start-1) ;
	}
	else {
		FUNC1(FUNC0(FM_RPXS),smc->hw.fp.fifo.tx_a0_start-1) ;
		FUNC1(FUNC0(FM_SWPXS),smc->hw.fp.fifo.tx_a0_start-1) ;
		FUNC1(FUNC0(FM_WPXS),smc->hw.fp.fifo.tx_a0_start-1) ;
		FUNC1(FUNC0(FM_EAS),smc->hw.fp.fifo.tx_a0_start-1) ;
	}
}