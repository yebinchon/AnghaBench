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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx_frame; int /*<<< orphan*/  rx_frame; int /*<<< orphan*/  rx_busy; int /*<<< orphan*/  cycles; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_frame; int /*<<< orphan*/  rx_frame; int /*<<< orphan*/  rx_busy; int /*<<< orphan*/  cycles; } ;
struct ath_common {TYPE_2__ cc_survey; TYPE_1__ cc_ani; void* ah; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_CCCNT ; 
 int /*<<< orphan*/  AR_MIBC ; 
 int /*<<< orphan*/  AR_MIBC_FMC ; 
 int /*<<< orphan*/  AR_RCCNT ; 
 int /*<<< orphan*/  AR_RFCNT ; 
 int /*<<< orphan*/  AR_TFCNT ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct ath_common *common)
{
	u32 cycles, busy, rx, tx;
	void *ah = common->ah;

	/* freeze */
	FUNC1(ah, AR_MIBC, AR_MIBC_FMC);

	/* read */
	cycles = FUNC0(ah, AR_CCCNT);
	busy = FUNC0(ah, AR_RCCNT);
	rx = FUNC0(ah, AR_RFCNT);
	tx = FUNC0(ah, AR_TFCNT);

	/* clear */
	FUNC1(ah, AR_CCCNT, 0);
	FUNC1(ah, AR_RFCNT, 0);
	FUNC1(ah, AR_RCCNT, 0);
	FUNC1(ah, AR_TFCNT, 0);

	/* unfreeze */
	FUNC1(ah, AR_MIBC, 0);

	/* update all cycle counters here */
	common->cc_ani.cycles += cycles;
	common->cc_ani.rx_busy += busy;
	common->cc_ani.rx_frame += rx;
	common->cc_ani.tx_frame += tx;

	common->cc_survey.cycles += cycles;
	common->cc_survey.rx_busy += busy;
	common->cc_survey.rx_frame += rx;
	common->cc_survey.tx_frame += tx;
}