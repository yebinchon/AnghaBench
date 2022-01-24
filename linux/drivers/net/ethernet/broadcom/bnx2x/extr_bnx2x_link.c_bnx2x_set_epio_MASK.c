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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  MCP_REG_MCPR_GP_OENABLE ; 
 int /*<<< orphan*/  MCP_REG_MCPR_GP_OUTPUTS ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct bnx2x *bp, u32 epio_pin, u32 en)
{
	u32 epio_mask, gp_output, gp_oenable;

	/* Sanity check */
	if (epio_pin > 31) {
		FUNC0(NETIF_MSG_LINK, "Invalid EPIO pin %d to set\n", epio_pin);
		return;
	}
	FUNC0(NETIF_MSG_LINK, "Setting EPIO pin %d to %d\n", epio_pin, en);
	epio_mask = 1 << epio_pin;
	/* Set this EPIO to output */
	gp_output = FUNC1(bp, MCP_REG_MCPR_GP_OUTPUTS);
	if (en)
		gp_output |= epio_mask;
	else
		gp_output &= ~epio_mask;

	FUNC2(bp, MCP_REG_MCPR_GP_OUTPUTS, gp_output);

	/* Set the value for this EPIO */
	gp_oenable = FUNC1(bp, MCP_REG_MCPR_GP_OENABLE);
	FUNC2(bp, MCP_REG_MCPR_GP_OENABLE, gp_oenable | epio_mask);
}