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
typedef  int /*<<< orphan*/  u32 ;
struct ath_softc {TYPE_1__* cur_chan; struct ath_hw* sc_ah; } ;
struct TYPE_6__ {scalar_t__ ani_poll_interval; } ;
struct ath_hw {TYPE_3__ config; } ;
struct TYPE_5__ {unsigned long longcal_timer; unsigned long shortcal_timer; unsigned long checkani_timer; int /*<<< orphan*/  timer; } ;
struct ath_common {TYPE_2__ ani; int /*<<< orphan*/  op_flags; scalar_t__ disable_ani; } ;
struct TYPE_4__ {scalar_t__ offchannel; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 int /*<<< orphan*/  ATH_OP_ANI_RUN ; 
 struct ath_common* FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct ath_softc *sc)
{
	struct ath_hw *ah = sc->sc_ah;
	struct ath_common *common = FUNC0(ah);
	unsigned long timestamp = FUNC2(jiffies);

	if (common->disable_ani ||
	    !FUNC5(ATH_OP_ANI_RUN, &common->op_flags) ||
	    sc->cur_chan->offchannel)
		return;

	common->ani.longcal_timer = timestamp;
	common->ani.shortcal_timer = timestamp;
	common->ani.checkani_timer = timestamp;

	FUNC1(common, ANI, "Starting ANI\n");
	FUNC3(&common->ani.timer,
		  jiffies + FUNC4((u32)ah->config.ani_poll_interval));
}