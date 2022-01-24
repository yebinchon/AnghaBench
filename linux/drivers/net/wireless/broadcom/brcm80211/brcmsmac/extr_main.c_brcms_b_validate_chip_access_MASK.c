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
typedef  scalar_t__ u32 ;
struct wiphy {int dummy; } ;
struct brcms_hardware {int /*<<< orphan*/  unit; TYPE_1__* wlc; struct bcma_device* d11core; } ;
struct bcma_device {int dummy; } ;
struct TYPE_2__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MCTL_GMODE ; 
 scalar_t__ MCTL_IHR_EN ; 
 scalar_t__ MCTL_WAKE ; 
 scalar_t__ OBJADDR_SHM_SEL ; 
 scalar_t__ FUNC1 (struct bcma_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  maccontrol ; 
 int /*<<< orphan*/  objaddr ; 
 int /*<<< orphan*/  objdata ; 
 int /*<<< orphan*/  tsf_cfpstart ; 
 int /*<<< orphan*/  FUNC3 (struct wiphy*,char*,int /*<<< orphan*/ ,scalar_t__,...) ; 

__attribute__((used)) static bool FUNC4(struct brcms_hardware *wlc_hw)
{
	struct bcma_device *core = wlc_hw->d11core;
	u32 w, val;
	struct wiphy *wiphy = wlc_hw->wlc->wiphy;

	/* Validate dchip register access */

	FUNC2(core, FUNC0(objaddr), OBJADDR_SHM_SEL | 0);
	(void)FUNC1(core, FUNC0(objaddr));
	w = FUNC1(core, FUNC0(objdata));

	/* Can we write and read back a 32bit register? */
	FUNC2(core, FUNC0(objaddr), OBJADDR_SHM_SEL | 0);
	(void)FUNC1(core, FUNC0(objaddr));
	FUNC2(core, FUNC0(objdata), (u32) 0xaa5555aa);

	FUNC2(core, FUNC0(objaddr), OBJADDR_SHM_SEL | 0);
	(void)FUNC1(core, FUNC0(objaddr));
	val = FUNC1(core, FUNC0(objdata));
	if (val != (u32) 0xaa5555aa) {
		FUNC3(wiphy, "wl%d: validate_chip_access: SHM = 0x%x, "
			  "expected 0xaa5555aa\n", wlc_hw->unit, val);
		return false;
	}

	FUNC2(core, FUNC0(objaddr), OBJADDR_SHM_SEL | 0);
	(void)FUNC1(core, FUNC0(objaddr));
	FUNC2(core, FUNC0(objdata), (u32) 0x55aaaa55);

	FUNC2(core, FUNC0(objaddr), OBJADDR_SHM_SEL | 0);
	(void)FUNC1(core, FUNC0(objaddr));
	val = FUNC1(core, FUNC0(objdata));
	if (val != (u32) 0x55aaaa55) {
		FUNC3(wiphy, "wl%d: validate_chip_access: SHM = 0x%x, "
			  "expected 0x55aaaa55\n", wlc_hw->unit, val);
		return false;
	}

	FUNC2(core, FUNC0(objaddr), OBJADDR_SHM_SEL | 0);
	(void)FUNC1(core, FUNC0(objaddr));
	FUNC2(core, FUNC0(objdata), w);

	/* clear CFPStart */
	FUNC2(core, FUNC0(tsf_cfpstart), 0);

	w = FUNC1(core, FUNC0(maccontrol));
	if ((w != (MCTL_IHR_EN | MCTL_WAKE)) &&
	    (w != (MCTL_IHR_EN | MCTL_GMODE | MCTL_WAKE))) {
		FUNC3(wiphy, "wl%d: validate_chip_access: maccontrol = "
			  "0x%x, expected 0x%x or 0x%x\n", wlc_hw->unit, w,
			  (MCTL_IHR_EN | MCTL_WAKE),
			  (MCTL_IHR_EN | MCTL_GMODE | MCTL_WAKE));
		return false;
	}

	return true;
}