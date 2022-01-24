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
typedef  int u32 ;
typedef  int /*<<< orphan*/  adapter_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_ELMER0_GPO ; 
 int /*<<< orphan*/  REG_SW_RESET ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(adapter_t* adapter)
{
	u32 val;
	u32 result = 0xffff;

	FUNC1(adapter, A_ELMER0_GPO, &val);
	val &= ~1;
	FUNC2(adapter, A_ELMER0_GPO, val);
	FUNC3(2);
	val |= 0x1;	/* Enable mac MAC itself */
	val |= 0x800;	/* Turn off the red LED */
	FUNC2(adapter, A_ELMER0_GPO, val);
	FUNC0(1);
	FUNC5(adapter, REG_SW_RESET, 0x80000001);
	do {
		FUNC0(1);
		FUNC4(adapter, REG_SW_RESET, &result);
	} while (result != 0x0);
}