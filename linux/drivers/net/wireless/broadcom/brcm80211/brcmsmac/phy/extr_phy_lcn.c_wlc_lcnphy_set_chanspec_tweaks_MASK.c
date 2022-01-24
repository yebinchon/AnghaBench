#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct brcms_phy_lcnphy {int lcnphy_bandedge_corr; int lcnphy_spurmod; } ;
struct TYPE_4__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_3__* d11core; TYPE_1__ u; } ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_5__ {int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_CC_PMU_CTL ; 
 int /*<<< orphan*/  BCMA_CC_PMU_CTL_PLL_UPD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct brcms_phy*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int,int) ; 

__attribute__((used)) static void
FUNC8(struct brcms_phy *pi, u16 chanspec)
{
	u8 channel = FUNC0(chanspec);
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	if (channel == 14)
		FUNC4(pi, 0x448, (0x3 << 8), (2) << 8);
	else
		FUNC4(pi, 0x448, (0x3 << 8), (1) << 8);

	pi_lcn->lcnphy_bandedge_corr = 2;
	if (channel == 1)
		pi_lcn->lcnphy_bandedge_corr = 4;

	if (channel == 1 || channel == 2 || channel == 3 ||
	    channel == 4 || channel == 9 ||
	    channel == 10 || channel == 11 || channel == 12) {
		FUNC3(&pi->d11core->bus->drv_cc, 0x2,
				      0x03000c04);
		FUNC2(&pi->d11core->bus->drv_cc, 0x3,
					~0x00ffffff, 0x0);
		FUNC3(&pi->d11core->bus->drv_cc, 0x4,
				      0x200005c0);

		FUNC1(&pi->d11core->bus->drv_cc, BCMA_CC_PMU_CTL,
			      BCMA_CC_PMU_CTL_PLL_UPD);
		FUNC7(pi, 0x942, 0);
		FUNC6(pi, false);
		pi_lcn->lcnphy_spurmod = false;
		FUNC4(pi, 0x424, (0xff << 8), (0x1b) << 8);

		FUNC7(pi, 0x425, 0x5907);
	} else {
		FUNC3(&pi->d11core->bus->drv_cc, 0x2,
				      0x03140c04);
		FUNC2(&pi->d11core->bus->drv_cc, 0x3,
					~0x00ffffff, 0x333333);
		FUNC3(&pi->d11core->bus->drv_cc, 0x4,
				      0x202c2820);

		FUNC1(&pi->d11core->bus->drv_cc, BCMA_CC_PMU_CTL,
			      BCMA_CC_PMU_CTL_PLL_UPD);
		FUNC7(pi, 0x942, 0);
		FUNC6(pi, true);

		pi_lcn->lcnphy_spurmod = false;
		FUNC4(pi, 0x424, (0xff << 8), (0x1f) << 8);

		FUNC7(pi, 0x425, 0x590a);
	}

	FUNC5(pi, 0x44a, 0x44);
	FUNC7(pi, 0x44a, 0x80);
}