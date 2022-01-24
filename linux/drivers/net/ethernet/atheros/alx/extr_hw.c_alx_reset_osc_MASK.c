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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct alx_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALX_MISC ; 
 int /*<<< orphan*/  ALX_MISC3 ; 
 int ALX_MISC3_25M_BY_SW ; 
 int ALX_MISC3_25M_NOTO_INTNL ; 
 int ALX_MISC_INTNLOSC_OPEN ; 
 int ALX_MISC_ISO_EN ; 
 int /*<<< orphan*/  ALX_MISC_PSW_OCP ; 
 int /*<<< orphan*/  ALX_MISC_PSW_OCP_DEF ; 
 int /*<<< orphan*/  ALX_MSIC2 ; 
 int ALX_MSIC2_CALB_START ; 
 scalar_t__ ALX_REV_B0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (struct alx_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct alx_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct alx_hw *hw, u8 rev)
{
	u32 val, val2;

	/* clear Internal OSC settings, switching OSC by hw itself */
	val = FUNC2(hw, ALX_MISC3);
	FUNC3(hw, ALX_MISC3,
			(val & ~ALX_MISC3_25M_BY_SW) |
			ALX_MISC3_25M_NOTO_INTNL);

	/* 25M clk from chipset may be unstable 1s after de-assert of
	 * PERST, driver need re-calibrate before enter Sleep for WoL
	 */
	val = FUNC2(hw, ALX_MISC);
	if (rev >= ALX_REV_B0) {
		/* restore over current protection def-val,
		 * this val could be reset by MAC-RST
		 */
		FUNC0(val, ALX_MISC_PSW_OCP, ALX_MISC_PSW_OCP_DEF);
		/* a 0->1 change will update the internal val of osc */
		val &= ~ALX_MISC_INTNLOSC_OPEN;
		FUNC3(hw, ALX_MISC, val);
		FUNC3(hw, ALX_MISC, val | ALX_MISC_INTNLOSC_OPEN);
		/* hw will automatically dis OSC after cab. */
		val2 = FUNC2(hw, ALX_MSIC2);
		val2 &= ~ALX_MSIC2_CALB_START;
		FUNC3(hw, ALX_MSIC2, val2);
		FUNC3(hw, ALX_MSIC2, val2 | ALX_MSIC2_CALB_START);
	} else {
		val &= ~ALX_MISC_INTNLOSC_OPEN;
		/* disable isolate for rev A devices */
		if (FUNC1(rev))
			val &= ~ALX_MISC_ISO_EN;

		FUNC3(hw, ALX_MISC, val | ALX_MISC_INTNLOSC_OPEN);
		FUNC3(hw, ALX_MISC, val);
	}

	FUNC4(20);
}