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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_SPIO ; 
 int /*<<< orphan*/  MISC_REG_SPIO ; 
 int MISC_SPIO_CLR_POS ; 
 int MISC_SPIO_FLOAT ; 
 int MISC_SPIO_FLOAT_POS ; 
#define  MISC_SPIO_INPUT_HI_Z 130 
#define  MISC_SPIO_OUTPUT_HIGH 129 
#define  MISC_SPIO_OUTPUT_LOW 128 
 int MISC_SPIO_SET_POS ; 
 int MISC_SPIO_SPIO4 ; 
 int MISC_SPIO_SPIO5 ; 
 int /*<<< orphan*/  NETIF_MSG_HW ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct bnx2x *bp, int spio, u32 mode)
{
	u32 spio_reg;

	/* Only 2 SPIOs are configurable */
	if ((spio != MISC_SPIO_SPIO4) && (spio != MISC_SPIO_SPIO5)) {
		FUNC0("Invalid SPIO 0x%x\n", spio);
		return -EINVAL;
	}

	FUNC4(bp, HW_LOCK_RESOURCE_SPIO);
	/* read SPIO and mask except the float bits */
	spio_reg = (FUNC2(bp, MISC_REG_SPIO) & MISC_SPIO_FLOAT);

	switch (mode) {
	case MISC_SPIO_OUTPUT_LOW:
		FUNC1(NETIF_MSG_HW, "Set SPIO 0x%x -> output low\n", spio);
		/* clear FLOAT and set CLR */
		spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
		spio_reg |=  (spio << MISC_SPIO_CLR_POS);
		break;

	case MISC_SPIO_OUTPUT_HIGH:
		FUNC1(NETIF_MSG_HW, "Set SPIO 0x%x -> output high\n", spio);
		/* clear FLOAT and set SET */
		spio_reg &= ~(spio << MISC_SPIO_FLOAT_POS);
		spio_reg |=  (spio << MISC_SPIO_SET_POS);
		break;

	case MISC_SPIO_INPUT_HI_Z:
		FUNC1(NETIF_MSG_HW, "Set SPIO 0x%x -> input\n", spio);
		/* set FLOAT */
		spio_reg |= (spio << MISC_SPIO_FLOAT_POS);
		break;

	default:
		break;
	}

	FUNC3(bp, MISC_REG_SPIO, spio_reg);
	FUNC5(bp, HW_LOCK_RESOURCE_SPIO);

	return 0;
}