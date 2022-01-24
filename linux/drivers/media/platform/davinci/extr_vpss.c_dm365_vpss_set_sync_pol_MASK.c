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
struct vpss_sync_pol {int ccdpg_hdpol; int ccdpg_vdpol; } ;

/* Variables and functions */
 int DM365_CCDC_PG_HD_POL_SHIFT ; 
 int DM365_CCDC_PG_VD_POL_SHIFT ; 
 int /*<<< orphan*/  DM365_ISP5_CCDCMUX ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(struct vpss_sync_pol sync)
{
	int val = 0;
	val = FUNC0(DM365_ISP5_CCDCMUX);

	val |= (sync.ccdpg_hdpol << DM365_CCDC_PG_HD_POL_SHIFT);
	val |= (sync.ccdpg_vdpol << DM365_CCDC_PG_VD_POL_SHIFT);

	FUNC1(val, DM365_ISP5_CCDCMUX);
}