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
struct TYPE_2__ {int /*<<< orphan*/  mchip_dmahandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCHIP_HIC_CMD ; 
 int /*<<< orphan*/  MCHIP_HIC_CMD_START ; 
 int /*<<< orphan*/  MCHIP_HIC_MODE ; 
 int /*<<< orphan*/  MCHIP_HIC_MODE_STILL_CAP ; 
 int /*<<< orphan*/  MCHIP_HIC_STATUS ; 
 int /*<<< orphan*/  MCHIP_HIC_STATUS_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_1__ meye ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	int i;

	FUNC2();
	FUNC4();
	FUNC1(meye.mchip_dmahandle);

	FUNC3(MCHIP_HIC_MODE, MCHIP_HIC_MODE_STILL_CAP);
	FUNC3(MCHIP_HIC_CMD, MCHIP_HIC_CMD_START);

	FUNC0(MCHIP_HIC_CMD, 0);

	for (i = 0; i < 100; ++i) {
		if (FUNC0(MCHIP_HIC_STATUS, MCHIP_HIC_STATUS_IDLE))
			break;
		FUNC5(1);
	}
}