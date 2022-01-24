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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  PRCM_APE_SOFTRST ; 
 scalar_t__ PRCM_SW_RST_REASON ; 
 scalar_t__ tcdm_base ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC2(u16 reset_code)
{
	FUNC1(reset_code, (tcdm_base + PRCM_SW_RST_REASON));
	FUNC0(1, PRCM_APE_SOFTRST);
}