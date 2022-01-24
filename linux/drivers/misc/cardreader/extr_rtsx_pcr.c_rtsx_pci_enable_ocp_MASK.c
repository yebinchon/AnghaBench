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
typedef  int u8 ;
struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_ocp ) (struct rtsx_pcr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FPDCTL ; 
 int OC_POWER_DOWN ; 
 int /*<<< orphan*/  REG_OCPCTL ; 
 int SD_DETECT_EN ; 
 int SD_OCP_INT_EN ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 

void FUNC2(struct rtsx_pcr *pcr)
{
	u8 val = SD_OCP_INT_EN | SD_DETECT_EN;

	if (pcr->ops->enable_ocp) {
		pcr->ops->enable_ocp(pcr);
	} else {
		FUNC0(pcr, FPDCTL, OC_POWER_DOWN, 0);
		FUNC0(pcr, REG_OCPCTL, 0xFF, val);
	}

}