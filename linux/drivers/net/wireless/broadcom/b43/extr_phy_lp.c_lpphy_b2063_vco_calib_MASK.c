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
typedef  int u16 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B2063_PLL_JTAG_CALNRST ; 
 int /*<<< orphan*/  B2063_PLL_SP1 ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev)
{
	u16 tmp;

	FUNC0(dev, B2063_PLL_SP1, ~0x40);
	tmp = FUNC1(dev, B2063_PLL_JTAG_CALNRST) & 0xF8;
	FUNC3(dev, B2063_PLL_JTAG_CALNRST, tmp);
	FUNC4(1);
	FUNC3(dev, B2063_PLL_JTAG_CALNRST, tmp | 0x4);
	FUNC4(1);
	FUNC3(dev, B2063_PLL_JTAG_CALNRST, tmp | 0x6);
	FUNC4(1);
	FUNC3(dev, B2063_PLL_JTAG_CALNRST, tmp | 0x7);
	FUNC4(300);
	FUNC2(dev, B2063_PLL_SP1, 0x40);
}