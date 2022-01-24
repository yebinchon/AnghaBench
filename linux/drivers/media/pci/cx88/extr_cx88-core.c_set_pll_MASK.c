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
typedef  int u64 ;
typedef  int u32 ;
struct cx88_core {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MO_DEVICE_STATUS ; 
 int /*<<< orphan*/  MO_PLL_REG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  xtal ; 

__attribute__((used)) static int FUNC6(struct cx88_core *core, int prescale, u32 ofreq)
{
	static const u32 pre[] = { 0, 0, 0, 3, 2, 1 };
	u64 pll;
	u32 reg;
	int i;

	if (prescale < 2)
		prescale = 2;
	if (prescale > 5)
		prescale = 5;

	pll = ofreq * 8 * prescale * (u64)(1 << 20);
	FUNC2(pll, xtal);
	reg = (pll & 0x3ffffff) | (pre[prescale] << 26);
	if (((reg >> 20) & 0x3f) < 14) {
		FUNC4("pll out of range\n");
		return -1;
	}

	FUNC3(1, "set_pll:    MO_PLL_REG       0x%08x [old=0x%08x,freq=%d]\n",
		reg, FUNC0(MO_PLL_REG), ofreq);
	FUNC1(MO_PLL_REG, reg);
	for (i = 0; i < 100; i++) {
		reg = FUNC0(MO_DEVICE_STATUS);
		if (reg & (1 << 2)) {
			FUNC3(1, "pll locked [pre=%d,ofreq=%d]\n",
				prescale, ofreq);
			return 0;
		}
		FUNC3(1, "pll not locked yet, waiting ...\n");
		FUNC5(10000, 20000);
	}
	FUNC3(1, "pll NOT locked [pre=%d,ofreq=%d]\n", prescale, ofreq);
	return -1;
}