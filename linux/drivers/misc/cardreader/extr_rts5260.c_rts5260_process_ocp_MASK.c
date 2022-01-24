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
struct TYPE_2__ {int /*<<< orphan*/  ocp_en; } ;
struct rtsx_pcr {int ocp_stat; int ocp_stat2; TYPE_1__ option; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OE ; 
 int DV3318_OCP_EVER ; 
 int DV3318_OCP_NOW ; 
 int /*<<< orphan*/  RTSX_SD_CARD ; 
 int SD_OC_EVER ; 
 int SD_OC_NOW ; 
 int /*<<< orphan*/  SD_OUTPUT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct rtsx_pcr *pcr)
{
	if (!pcr->option.ocp_en)
		return;

	FUNC3(pcr, &pcr->ocp_stat);
	FUNC0(pcr, &pcr->ocp_stat2);

	if ((pcr->ocp_stat & (SD_OC_NOW | SD_OC_EVER)) ||
		(pcr->ocp_stat2 & (DV3318_OCP_NOW | DV3318_OCP_EVER))) {
		FUNC1(pcr, RTSX_SD_CARD);
		FUNC4(pcr, CARD_OE, SD_OUTPUT_EN, 0);
		FUNC2(pcr);
		pcr->ocp_stat = 0;
		pcr->ocp_stat2 = 0;
	}

}