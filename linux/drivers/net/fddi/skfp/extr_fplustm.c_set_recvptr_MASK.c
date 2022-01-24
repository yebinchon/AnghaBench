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
struct TYPE_4__ {scalar_t__ rbc_ram_end; scalar_t__ rx2_fifo_start; scalar_t__ rx2_fifo_size; scalar_t__ tx_s_start; scalar_t__ rx1_fifo_start; } ;
struct TYPE_5__ {TYPE_1__ fifo; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FM_EARV1 ; 
 int /*<<< orphan*/  FM_EARV2 ; 
 int /*<<< orphan*/  FM_RPR1 ; 
 int /*<<< orphan*/  FM_RPR2 ; 
 int /*<<< orphan*/  FM_SWPR1 ; 
 int /*<<< orphan*/  FM_SWPR2 ; 
 int /*<<< orphan*/  FM_WPR1 ; 
 int /*<<< orphan*/  FM_WPR2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct s_smc *smc)
{
	/*
	 * initialize the pointer for receive queue 1
	 */
	FUNC1(FUNC0(FM_RPR1),smc->hw.fp.fifo.rx1_fifo_start) ;	/* RPR1 */
	FUNC1(FUNC0(FM_SWPR1),smc->hw.fp.fifo.rx1_fifo_start) ;	/* SWPR1 */
	FUNC1(FUNC0(FM_WPR1),smc->hw.fp.fifo.rx1_fifo_start) ;	/* WPR1 */
	FUNC1(FUNC0(FM_EARV1),smc->hw.fp.fifo.tx_s_start-1) ;	/* EARV1 */

	/*
	 * initialize the pointer for receive queue 2
	 */
	if (smc->hw.fp.fifo.rx2_fifo_size) {
		FUNC1(FUNC0(FM_RPR2),smc->hw.fp.fifo.rx2_fifo_start) ;
		FUNC1(FUNC0(FM_SWPR2),smc->hw.fp.fifo.rx2_fifo_start) ;
		FUNC1(FUNC0(FM_WPR2),smc->hw.fp.fifo.rx2_fifo_start) ;
		FUNC1(FUNC0(FM_EARV2),smc->hw.fp.fifo.rbc_ram_end-1) ;
	}
	else {
		FUNC1(FUNC0(FM_RPR2),smc->hw.fp.fifo.rbc_ram_end-1) ;
		FUNC1(FUNC0(FM_SWPR2),smc->hw.fp.fifo.rbc_ram_end-1) ;
		FUNC1(FUNC0(FM_WPR2),smc->hw.fp.fifo.rbc_ram_end-1) ;
		FUNC1(FUNC0(FM_EARV2),smc->hw.fp.fifo.rbc_ram_end-1) ;
	}
}