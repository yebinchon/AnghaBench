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
struct TYPE_2__ {int /*<<< orphan*/  (* clear_ocpstat ) (struct rtsx_pcr*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  REG_OCPCTL ; 
 int SD_OCP_INT_CLR ; 
 int SD_OC_CLR ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3(struct rtsx_pcr *pcr)
{
	if (pcr->ops->clear_ocpstat) {
		pcr->ops->clear_ocpstat(pcr);
	} else {
		u8 mask = SD_OCP_INT_CLR | SD_OC_CLR;
		u8 val = SD_OCP_INT_CLR | SD_OC_CLR;

		FUNC0(pcr, REG_OCPCTL, mask, val);
		FUNC2(100);
		FUNC0(pcr, REG_OCPCTL, mask, 0);
	}
}