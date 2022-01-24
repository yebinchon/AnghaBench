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
 int EINVAL ; 
 int MISC_REGISTERS_GPIO_3 ; 
 int MISC_REGISTERS_GPIO_PORT_SHIFT ; 
 int /*<<< orphan*/  MISC_REG_GPIO ; 
 int /*<<< orphan*/  NIG_REG_PORT_SWAP ; 
 int /*<<< orphan*/  NIG_REG_STRAP_OVERRIDE ; 
 int FUNC1 (struct bnx2x*,int /*<<< orphan*/ ) ; 

int FUNC2(struct bnx2x *bp, int gpio_num, u8 port)
{
	/* The GPIO should be swapped if swap register is set and active */
	int gpio_port = (FUNC1(bp, NIG_REG_PORT_SWAP) &&
			 FUNC1(bp, NIG_REG_STRAP_OVERRIDE)) ^ port;
	int gpio_shift = gpio_num +
			(gpio_port ? MISC_REGISTERS_GPIO_PORT_SHIFT : 0);
	u32 gpio_mask = (1 << gpio_shift);
	u32 gpio_reg;
	int value;

	if (gpio_num > MISC_REGISTERS_GPIO_3) {
		FUNC0("Invalid GPIO %d\n", gpio_num);
		return -EINVAL;
	}

	/* read GPIO value */
	gpio_reg = FUNC1(bp, MISC_REG_GPIO);

	/* get the requested pin value */
	if ((gpio_reg & gpio_mask) == gpio_mask)
		value = 1;
	else
		value = 0;

	return value;
}