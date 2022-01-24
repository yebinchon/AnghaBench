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
typedef  int u8 ;
typedef  int u32 ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  HW_LOCK_RESOURCE_GPIO ; 
 int MISC_REGISTERS_GPIO_3 ; 
 int MISC_REGISTERS_GPIO_INT_CLR_POS ; 
#define  MISC_REGISTERS_GPIO_INT_OUTPUT_CLR 129 
#define  MISC_REGISTERS_GPIO_INT_OUTPUT_SET 128 
 int MISC_REGISTERS_GPIO_INT_SET_POS ; 
 int MISC_REGISTERS_GPIO_PORT_SHIFT ; 
 int /*<<< orphan*/  MISC_REG_GPIO_INT ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 int FUNC2 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ) ; 

int FUNC6(struct bnx2x *bp, int gpio_num, u32 mode, u8 port)
{
	/* The GPIO should be swapped if swap register is set and active */
	int gpio_port = (FUNC2(bp, NIG_REG_PORT_SWAP) &&
			 FUNC2(bp, NIG_REG_STRAP_OVERRIDE)) ^ port;
	int gpio_shift = gpio_num +
			(gpio_port ? MISC_REGISTERS_GPIO_PORT_SHIFT : 0);
	u32 gpio_mask = (1 << gpio_shift);
	u32 gpio_reg;

	if (gpio_num > MISC_REGISTERS_GPIO_3) {
		FUNC0("Invalid GPIO %d\n", gpio_num);
		return -EINVAL;
	}

	FUNC4(bp, HW_LOCK_RESOURCE_GPIO);
	/* read GPIO int */
	gpio_reg = FUNC2(bp, MISC_REG_GPIO_INT);

	switch (mode) {
	case MISC_REGISTERS_GPIO_INT_OUTPUT_CLR:
		FUNC1(NETIF_MSG_LINK,
		   "Clear GPIO INT %d (shift %d) -> output low\n",
		   gpio_num, gpio_shift);
		/* clear SET and set CLR */
		gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_INT_SET_POS);
		gpio_reg |=  (gpio_mask << MISC_REGISTERS_GPIO_INT_CLR_POS);
		break;

	case MISC_REGISTERS_GPIO_INT_OUTPUT_SET:
		FUNC1(NETIF_MSG_LINK,
		   "Set GPIO INT %d (shift %d) -> output high\n",
		   gpio_num, gpio_shift);
		/* clear CLR and set SET */
		gpio_reg &= ~(gpio_mask << MISC_REGISTERS_GPIO_INT_CLR_POS);
		gpio_reg |=  (gpio_mask << MISC_REGISTERS_GPIO_INT_SET_POS);
		break;

	default:
		break;
	}

	FUNC3(bp, MISC_REG_GPIO_INT, gpio_reg);
	FUNC5(bp, HW_LOCK_RESOURCE_GPIO);

	return 0;
}