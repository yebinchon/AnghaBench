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
struct net_device {int dummy; } ;
struct TYPE_3__ {int shift; int /*<<< orphan*/  mult; int /*<<< orphan*/  mask; int /*<<< orphan*/  read; } ;
struct fec_enet_private {int cycle_speed; int /*<<< orphan*/  tmreg_lock; TYPE_1__ cc; int /*<<< orphan*/  tc; scalar_t__ hwp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FEC_ATIME_CTRL ; 
 scalar_t__ FEC_ATIME_EVT_PERIOD ; 
 scalar_t__ FEC_ATIME_INC ; 
 int /*<<< orphan*/  FEC_CC_MULT ; 
 int FEC_COUNTER_PERIOD ; 
 int FEC_T_CTRL_ENABLE ; 
 int FEC_T_CTRL_PERIOD_RST ; 
 int FEC_T_INC_OFFSET ; 
 int /*<<< orphan*/  fec_ptp_read ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct fec_enet_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

void FUNC9(struct net_device *ndev)
{
	struct fec_enet_private *fep = FUNC4(ndev);
	unsigned long flags;
	int inc;

	inc = 1000000000 / fep->cycle_speed;

	/* grab the ptp lock */
	FUNC5(&fep->tmreg_lock, flags);

	/* 1ns counter */
	FUNC8(inc << FEC_T_INC_OFFSET, fep->hwp + FEC_ATIME_INC);

	/* use 31-bit timer counter */
	FUNC8(FEC_COUNTER_PERIOD, fep->hwp + FEC_ATIME_EVT_PERIOD);

	FUNC8(FEC_T_CTRL_ENABLE | FEC_T_CTRL_PERIOD_RST,
		fep->hwp + FEC_ATIME_CTRL);

	FUNC3(&fep->cc, 0, sizeof(fep->cc));
	fep->cc.read = fec_ptp_read;
	fep->cc.mask = FUNC0(31);
	fep->cc.shift = 31;
	fep->cc.mult = FEC_CC_MULT;

	/* reset the ns time counter */
	FUNC7(&fep->tc, &fep->cc, FUNC2(FUNC1()));

	FUNC6(&fep->tmreg_lock, flags);
}