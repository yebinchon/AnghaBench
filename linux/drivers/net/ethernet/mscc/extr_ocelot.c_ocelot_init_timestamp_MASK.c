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
struct TYPE_2__ {int /*<<< orphan*/  rx_filter; } ;
struct ocelot {TYPE_1__ hwtstamp_config; int /*<<< orphan*/  ptp_clock; int /*<<< orphan*/  dev; int /*<<< orphan*/  ptp_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANA_TABLES_PTP_ID_HIGH ; 
 int /*<<< orphan*/  ANA_TABLES_PTP_ID_LOW ; 
 int /*<<< orphan*/  HWTSTAMP_FILTER_PTP_V2_EVENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTP_CFG_MISC ; 
 int PTP_CFG_MISC_PTP_EN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYS_PTP_CFG ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  ocelot_ptp_clock_info ; 
 int /*<<< orphan*/  FUNC3 (struct ocelot*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ocelot *ocelot)
{
	ocelot->ptp_info = ocelot_ptp_clock_info;
	ocelot->ptp_clock = FUNC4(&ocelot->ptp_info, ocelot->dev);
	if (FUNC0(ocelot->ptp_clock))
		return FUNC1(ocelot->ptp_clock);
	/* Check if PHC support is missing at the configuration level */
	if (!ocelot->ptp_clock)
		return 0;

	FUNC3(ocelot, FUNC2(30), SYS_PTP_CFG);
	FUNC3(ocelot, 0xffffffff, ANA_TABLES_PTP_ID_LOW);
	FUNC3(ocelot, 0xffffffff, ANA_TABLES_PTP_ID_HIGH);

	FUNC3(ocelot, PTP_CFG_MISC_PTP_EN, PTP_CFG_MISC);

	/* There is no device reconfiguration, PTP Rx stamping is always
	 * enabled.
	 */
	ocelot->hwtstamp_config.rx_filter = HWTSTAMP_FILTER_PTP_V2_EVENT;

	return 0;
}