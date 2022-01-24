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
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MDIO_CL73_IEEEB1_AN_ADV1 ; 
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH ; 
 int MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK ; 
 int /*<<< orphan*/  MDIO_COMBO_IEEE0_AUTO_NEG_ADV ; 
 int /*<<< orphan*/  MDIO_REG_BANK_CL73_IEEEB1 ; 
 int /*<<< orphan*/  MDIO_REG_BANK_COMBO_IEEE0 ; 

__attribute__((used)) static void FUNC2(struct bnx2x_phy *phy,
					      struct link_params *params,
					      u16 ieee_fc)
{
	struct bnx2x *bp = params->bp;
	u16 val;
	/* For AN, we are always publishing full duplex */

	FUNC1(bp, phy,
			  MDIO_REG_BANK_COMBO_IEEE0,
			  MDIO_COMBO_IEEE0_AUTO_NEG_ADV, ieee_fc);
	FUNC0(bp, phy,
			  MDIO_REG_BANK_CL73_IEEEB1,
			  MDIO_CL73_IEEEB1_AN_ADV1, &val);
	val &= ~MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_BOTH;
	val |= ((ieee_fc<<3) & MDIO_CL73_IEEEB1_AN_ADV1_PAUSE_MASK);
	FUNC1(bp, phy,
			  MDIO_REG_BANK_CL73_IEEEB1,
			  MDIO_CL73_IEEEB1_AN_ADV1, val);
}