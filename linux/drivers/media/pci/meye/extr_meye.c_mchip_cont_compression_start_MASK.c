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
struct TYPE_2__ {int /*<<< orphan*/  mchip_mode; int /*<<< orphan*/  mchip_dmahandle; } ;

/* Variables and functions */
 int /*<<< orphan*/  MCHIP_HIC_CMD ; 
 int /*<<< orphan*/  MCHIP_HIC_CMD_START ; 
 int /*<<< orphan*/  MCHIP_HIC_MODE ; 
 int /*<<< orphan*/  MCHIP_HIC_MODE_CONT_COMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 TYPE_1__ meye ; 

__attribute__((used)) static void FUNC7(void)
{
	FUNC2();
	FUNC6(0x3f);
	FUNC5();
	FUNC4();
	FUNC1(meye.mchip_dmahandle);

	meye.mchip_mode = MCHIP_HIC_MODE_CONT_COMP;

	FUNC3(MCHIP_HIC_MODE, MCHIP_HIC_MODE_CONT_COMP);
	FUNC3(MCHIP_HIC_CMD, MCHIP_HIC_CMD_START);

	FUNC0(MCHIP_HIC_CMD, 0);
}