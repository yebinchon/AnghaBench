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
struct TYPE_4__ {int /*<<< orphan*/  ocp_en; } ;
struct rtsx_pcr {int ocp_stat; TYPE_2__ option; TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* process_ocp ) (struct rtsx_pcr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CARD_OE ; 
 int /*<<< orphan*/  RTSX_SD_CARD ; 
 int SD_OC_EVER ; 
 int SD_OC_NOW ; 
 int /*<<< orphan*/  SD_OUTPUT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtsx_pcr*,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtsx_pcr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rtsx_pcr*) ; 

__attribute__((used)) static void FUNC5(struct rtsx_pcr *pcr)
{
	if (pcr->ops->process_ocp) {
		pcr->ops->process_ocp(pcr);
	} else {
		if (!pcr->option.ocp_en)
			return;
		FUNC2(pcr, &pcr->ocp_stat);
		if (pcr->ocp_stat & (SD_OC_NOW | SD_OC_EVER)) {
			FUNC0(pcr, RTSX_SD_CARD);
			FUNC3(pcr, CARD_OE, SD_OUTPUT_EN, 0);
			FUNC1(pcr);
			pcr->ocp_stat = 0;
		}
	}
}