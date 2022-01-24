#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct brcms_phy_pub {int dummy; } ;
struct brcms_phy_lcnphy {int /*<<< orphan*/  lcnphy_noise_samples; int /*<<< orphan*/  lcnphy_rawtempsense; int /*<<< orphan*/  lcnphy_cal_temper; scalar_t__ lcnphy_cal_counter; } ;
struct TYPE_5__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_4__* sh; TYPE_3__* d11core; int /*<<< orphan*/  radio_chanspec; TYPE_1__ u; } ;
struct TYPE_8__ {int boardflags; } ;
struct TYPE_7__ {TYPE_2__* bus; } ;
struct TYPE_6__ {int /*<<< orphan*/  drv_cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFE_CLK_INIT_MODE_TXRX2X ; 
 int BFL_FEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FIXED_TXPWR ; 
 int /*<<< orphan*/  LCNPHY_NOISE_SAMPLES_DEFAULT ; 
 int /*<<< orphan*/  LCNPHY_TX_PWR_CTRL_HW ; 
 int /*<<< orphan*/  PHY_PERICAL_PHYINIT ; 
 int /*<<< orphan*/  FUNC1 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct brcms_phy*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct brcms_phy*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC9 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC10 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC12 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct brcms_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct brcms_phy*) ; 
 scalar_t__ FUNC15 (struct brcms_phy*) ; 
 int /*<<< orphan*/  FUNC16 (struct brcms_phy_pub*) ; 
 int /*<<< orphan*/  FUNC17 (struct brcms_phy_pub*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct brcms_phy*,int,int) ; 

void FUNC19(struct brcms_phy *pi)
{
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	pi_lcn->lcnphy_cal_counter = 0;
	pi_lcn->lcnphy_cal_temper = pi_lcn->lcnphy_rawtempsense;

	FUNC5(pi, 0x44a, 0x80);
	FUNC1(pi, 0x44a, 0x7f);

	FUNC7(pi, AFE_CLK_INIT_MODE_TXRX2X);

	FUNC18(pi, 0x60a, 160);

	FUNC18(pi, 0x46a, 25);

	FUNC9(pi);

	FUNC11(pi);

	if (FUNC0(pi->radio_chanspec))
		FUNC16((struct brcms_phy_pub *) pi);

	FUNC17((struct brcms_phy_pub *) pi, pi->radio_chanspec);

	FUNC3(&pi->d11core->bus->drv_cc, 0, ~0xf, 0x9);

	FUNC2(&pi->d11core->bus->drv_cc, 0, 0x0,
				    0x03CDDDDD);

	if ((pi->sh->boardflags & BFL_FEM)
	    && FUNC15(pi))
		FUNC12(pi, FIXED_TXPWR);

	FUNC8(pi);

	FUNC14(pi);

	FUNC4(pi, 0x448, (0x1 << 14), (1) << 14);

	FUNC6(100);
	FUNC4(pi, 0x448, (0x1 << 14), (0) << 14);

	FUNC13(pi, LCNPHY_TX_PWR_CTRL_HW);
	pi_lcn->lcnphy_noise_samples = LCNPHY_NOISE_SAMPLES_DEFAULT;
	FUNC10(pi, PHY_PERICAL_PHYINIT);
}