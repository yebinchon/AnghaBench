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
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MISC_REG_LCPLL_E40_PWRDWN ; 
 int /*<<< orphan*/  MISC_REG_LCPLL_E40_RESETB_ANA ; 
 int /*<<< orphan*/  MISC_REG_LCPLL_E40_RESETB_DIG ; 
 int /*<<< orphan*/  MISC_REG_WC0_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct link_params*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bnx2x_phy *phy,
				    struct link_params *params)
{
	struct bnx2x *bp = params->bp;
	FUNC1(params, 0);
	/* Put Warpcore in low power mode */
	FUNC0(bp, MISC_REG_WC0_RESET, 0x0c0e);

	/* Put LCPLL in low power mode */
	FUNC0(bp, MISC_REG_LCPLL_E40_PWRDWN, 1);
	FUNC0(bp, MISC_REG_LCPLL_E40_RESETB_ANA, 0);
	FUNC0(bp, MISC_REG_LCPLL_E40_RESETB_DIG, 0);
}