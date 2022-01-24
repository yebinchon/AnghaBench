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
typedef  int /*<<< orphan*/  u32 ;
struct ptp_clock_info {scalar_t__ (* adjfreq ) (struct ptp_clock_info*,int /*<<< orphan*/ ) ;} ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {int flags; int /*<<< orphan*/  hwtstamp_config; int /*<<< orphan*/  systim_lock; int /*<<< orphan*/  cc; int /*<<< orphan*/  tc; TYPE_1__* pdev; int /*<<< orphan*/  ptp_delta; struct e1000_hw hw; struct ptp_clock_info ptp_clock_info; } ;
typedef  scalar_t__ s32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FLAG_HAS_HW_TIMESTAMP ; 
 int /*<<< orphan*/  TIMINCA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct e1000_adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (struct ptp_clock_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct e1000_adapter *adapter)
{
	struct ptp_clock_info *info = &adapter->ptp_clock_info;
	struct e1000_hw *hw = &adapter->hw;
	unsigned long flags;
	u32 timinca;
	s32 ret_val;

	if (!(adapter->flags & FLAG_HAS_HW_TIMESTAMP))
		return;

	if (info->adjfreq) {
		/* restore the previous ptp frequency delta */
		ret_val = info->adjfreq(info, adapter->ptp_delta);
	} else {
		/* set the default base frequency if no adjustment possible */
		ret_val = FUNC2(adapter, &timinca);
		if (!ret_val)
			FUNC3(TIMINCA, timinca);
	}

	if (ret_val) {
		FUNC0(&adapter->pdev->dev,
			 "Failed to restore TIMINCA clock rate delta: %d\n",
			 ret_val);
		return;
	}

	/* reset the systim ns time counter */
	FUNC6(&adapter->systim_lock, flags);
	FUNC9(&adapter->tc, &adapter->cc,
			 FUNC5(FUNC4()));
	FUNC7(&adapter->systim_lock, flags);

	/* restore the previous hwtstamp configuration settings */
	FUNC1(adapter, &adapter->hwtstamp_config);
}