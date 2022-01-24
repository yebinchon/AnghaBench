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
struct aspeed_smc_controller {scalar_t__ regs; int /*<<< orphan*/  dev; } ;
struct aspeed_smc_chip {struct aspeed_smc_controller* controller; } ;

/* Variables and functions */
 scalar_t__ CONFIG_REG ; 
 int FUNC0 (struct aspeed_smc_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct aspeed_smc_chip *chip)
{
	struct aspeed_smc_controller *controller = chip->controller;
	u32 reg;

	reg = FUNC2(controller->regs + CONFIG_REG);

	if (reg & FUNC0(chip))
		return;

	FUNC1(controller->dev, "config write is not set ! @%p: 0x%08x\n",
		controller->regs + CONFIG_REG, reg);
	reg |= FUNC0(chip);
	FUNC3(reg, controller->regs + CONFIG_REG);
}