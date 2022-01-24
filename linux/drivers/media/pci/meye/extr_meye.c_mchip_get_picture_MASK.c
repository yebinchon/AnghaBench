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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  MCHIP_HIC_CMD ; 
 int /*<<< orphan*/  MCHIP_HIC_CMD_START ; 
 int /*<<< orphan*/  MCHIP_HIC_MODE ; 
 int /*<<< orphan*/  MCHIP_HIC_MODE_STILL_OUT ; 
 int /*<<< orphan*/  MCHIP_HIC_STATUS ; 
 int /*<<< orphan*/  MCHIP_HIC_STATUS_IDLE ; 
 int MCHIP_MM_FIR_RDY ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(u8 *buf, int bufsize)
{
	u32 v;
	int i;

	FUNC4(MCHIP_HIC_MODE, MCHIP_HIC_MODE_STILL_OUT);
	FUNC4(MCHIP_HIC_CMD, MCHIP_HIC_CMD_START);

	FUNC1(MCHIP_HIC_CMD, 0);
	for (i = 0; i < 100; ++i) {
		if (FUNC1(MCHIP_HIC_STATUS, MCHIP_HIC_STATUS_IDLE))
			break;
		FUNC5(1);
	}
	for (i = 0; i < 4; ++i) {
		v = FUNC3();
		if (v & MCHIP_MM_FIR_RDY) {
			FUNC0(v, buf, bufsize);
			break;
		}
		FUNC2();
	}
}