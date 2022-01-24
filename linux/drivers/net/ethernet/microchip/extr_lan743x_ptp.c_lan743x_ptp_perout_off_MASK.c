#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct lan743x_ptp {int perout_gpio_bit; int perout_event_ch; } ;
struct lan743x_adapter {struct lan743x_ptp ptp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  PTP_GENERAL_CONFIG ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct lan743x_adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lan743x_adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lan743x_adapter*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lan743x_adapter*,int) ; 

__attribute__((used)) static void FUNC7(struct lan743x_adapter *adapter)
{
	struct lan743x_ptp *ptp = &adapter->ptp;
	u32 general_config = 0;

	if (ptp->perout_gpio_bit >= 0) {
		FUNC5(adapter, ptp->perout_gpio_bit);
		ptp->perout_gpio_bit = -1;
	}

	if (ptp->perout_event_ch >= 0) {
		/* set target to far in the future, effectively disabling it */
		FUNC4(adapter,
				  FUNC1(ptp->perout_event_ch),
				  0xFFFF0000);
		FUNC4(adapter,
				  FUNC0(ptp->perout_event_ch),
				  0);

		general_config = FUNC3(adapter, PTP_GENERAL_CONFIG);
		general_config |= FUNC2
				  (ptp->perout_event_ch);
		FUNC4(adapter, PTP_GENERAL_CONFIG, general_config);
		FUNC6(adapter, ptp->perout_event_ch);
		ptp->perout_event_ch = -1;
	}
}