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
struct rtsx_pcr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC_FORCE_CTL ; 
 int FUNC_FORCE_UPME_XMT_DBG ; 
 int /*<<< orphan*/  PCLK_CTL ; 
 int PME_DEBUG_0 ; 
 int /*<<< orphan*/  PM_CLK_FORCE_CTL ; 
 int /*<<< orphan*/  PM_EVENT_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (struct rtsx_pcr*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtsx_pcr*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC2(struct rtsx_pcr *pcr)
{
	FUNC0(pcr);

	FUNC1(pcr, FUNC_FORCE_CTL, FUNC_FORCE_UPME_XMT_DBG,
		FUNC_FORCE_UPME_XMT_DBG);
	FUNC1(pcr, PCLK_CTL, 0x04, 0x04);
	FUNC1(pcr, PM_EVENT_DEBUG, PME_DEBUG_0, PME_DEBUG_0);
	FUNC1(pcr, PM_CLK_FORCE_CTL, 0xFF, 0x11);

	return 0;
}