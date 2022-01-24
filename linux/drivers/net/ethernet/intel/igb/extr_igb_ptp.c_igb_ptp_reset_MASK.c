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
struct timespec64 {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int ptp_flags; int /*<<< orphan*/  ptp_overflow_work; int /*<<< orphan*/  tmreg_lock; int /*<<< orphan*/  cc; int /*<<< orphan*/  tc; int /*<<< orphan*/  pps_sys_wrap_on; struct e1000_hw hw; int /*<<< orphan*/  tstamp_config; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_IMS ; 
 int E1000_IMS_TS ; 
 int /*<<< orphan*/  E1000_TIMINCA ; 
 int /*<<< orphan*/  E1000_TSAUXC ; 
 int /*<<< orphan*/  E1000_TSIM ; 
 int /*<<< orphan*/  E1000_TSSDP ; 
 int IGB_PTP_OVERFLOW_CHECK ; 
 int /*<<< orphan*/  IGB_SYSTIM_OVERFLOW_PERIOD ; 
 int INCPERIOD_82576 ; 
 int INCVALUE_82576 ; 
 int TSINTR_SYS_WRAP ; 
 int TSYNC_INTERRUPTS ; 
#define  e1000_82576 133 
#define  e1000_82580 132 
#define  e1000_i210 131 
#define  e1000_i211 130 
#define  e1000_i350 129 
#define  e1000_i354 128 
 int /*<<< orphan*/  FUNC0 (struct igb_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct igb_adapter*,struct timespec64*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct timespec64 FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(struct igb_adapter *adapter)
{
	struct e1000_hw *hw = &adapter->hw;
	unsigned long flags;

	/* reset the tstamp_config */
	FUNC0(adapter, &adapter->tstamp_config);

	FUNC6(&adapter->tmreg_lock, flags);

	switch (adapter->hw.mac.type) {
	case e1000_82576:
		/* Dial the nominal frequency. */
		FUNC9(E1000_TIMINCA, INCPERIOD_82576 | INCVALUE_82576);
		break;
	case e1000_82580:
	case e1000_i354:
	case e1000_i350:
	case e1000_i210:
	case e1000_i211:
		FUNC9(E1000_TSAUXC, 0x0);
		FUNC9(E1000_TSSDP, 0x0);
		FUNC9(E1000_TSIM,
		     TSYNC_INTERRUPTS |
		     (adapter->pps_sys_wrap_on ? TSINTR_SYS_WRAP : 0));
		FUNC9(E1000_IMS, E1000_IMS_TS);
		break;
	default:
		/* No work to do. */
		goto out;
	}

	/* Re-initialize the timer. */
	if ((hw->mac.type == e1000_i210) || (hw->mac.type == e1000_i211)) {
		struct timespec64 ts = FUNC4(FUNC2());

		FUNC1(adapter, &ts);
	} else {
		FUNC8(&adapter->tc, &adapter->cc,
				 FUNC3(FUNC2()));
	}
out:
	FUNC7(&adapter->tmreg_lock, flags);

	FUNC10();

	if (adapter->ptp_flags & IGB_PTP_OVERFLOW_CHECK)
		FUNC5(&adapter->ptp_overflow_work,
				      IGB_SYSTIM_OVERFLOW_PERIOD);
}