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
typedef  int u16 ;
struct r8152 {int coalesce; int /*<<< orphan*/  flags; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int AUTOLOAD_DONE ; 
 int BMCR_PDOWN ; 
 int /*<<< orphan*/  GREEN_ETHERNET ; 
 int MAC_CLK_SPDWN_EN ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  MCU_TYPE_USB ; 
 int /*<<< orphan*/  MII_BMCR ; 
 int /*<<< orphan*/  PHY_STAT_LAN_ON ; 
 int /*<<< orphan*/  PLA_BOOT_CTRL ; 
 int /*<<< orphan*/  PLA_MAC_PWR_CTRL2 ; 
 int /*<<< orphan*/  RTL8152_UNPLUG ; 
 int RX_AGG_DISABLE ; 
 int RX_ZERO_EN ; 
 int /*<<< orphan*/  USB_MSC_TIMER ; 
 int /*<<< orphan*/  USB_U1U2_TIMER ; 
 int /*<<< orphan*/  USB_USB_CTRL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct r8152*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct r8152*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(struct r8152 *tp)
{
	u32 ocp_data;
	u16 data;
	int i;

	if (FUNC14(RTL8152_UNPLUG, &tp->flags))
		return;

	FUNC9(tp, false);

	for (i = 0; i < 500; i++) {
		if (FUNC1(tp, MCU_TYPE_PLA, PLA_BOOT_CTRL) &
		    AUTOLOAD_DONE)
			break;
		FUNC0(20);
	}

	data = FUNC5(tp, 0);

	data = FUNC3(tp, MII_BMCR);
	if (data & BMCR_PDOWN) {
		data &= ~BMCR_PDOWN;
		FUNC4(tp, MII_BMCR, data);
	}

	data = FUNC5(tp, PHY_STAT_LAN_ON);

	FUNC7(tp, false);

	/* MSC timer = 0xfff * 8ms = 32760 ms */
	FUNC2(tp, MCU_TYPE_USB, USB_MSC_TIMER, 0x0fff);

	/* U1/U2/L1 idle timer. 500 us */
	FUNC2(tp, MCU_TYPE_USB, USB_U1U2_TIMER, 500);

	FUNC8(tp, false);
	FUNC10(tp, false);
	FUNC6(tp, false);
	FUNC11(tp, false);
	FUNC9(tp, true);
	FUNC15(tp->udev);

	/* MAC clock speed down */
	ocp_data = FUNC1(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL2);
	ocp_data |= MAC_CLK_SPDWN_EN;
	FUNC2(tp, MCU_TYPE_PLA, PLA_MAC_PWR_CTRL2, ocp_data);

	FUNC13(GREEN_ETHERNET, &tp->flags);

	/* rx aggregation */
	ocp_data = FUNC1(tp, MCU_TYPE_USB, USB_USB_CTRL);
	ocp_data &= ~(RX_AGG_DISABLE | RX_ZERO_EN);
	FUNC2(tp, MCU_TYPE_USB, USB_USB_CTRL, ocp_data);

	FUNC12(tp);

	tp->coalesce = 15000;	/* 15 us */
}