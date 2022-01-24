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
struct pm860x_chip {int /*<<< orphan*/  osc_status; int /*<<< orphan*/  osc_vote; int /*<<< orphan*/  osc_lock; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PM8606_MISC ; 
 int /*<<< orphan*/  PM8606_MISC_OSC_EN ; 
 int /*<<< orphan*/  PM8606_REF_GP_OSC_OFF ; 
 int /*<<< orphan*/  PM8606_VSYS ; 
 int /*<<< orphan*/  PM8606_VSYS_EN ; 
 int /*<<< orphan*/  REF_GP_NO_CLIENTS ; 
 struct pm860x_chip* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_client *i2c)
{
	struct pm860x_chip *chip = FUNC0(i2c);

	FUNC1(&chip->osc_lock);
	/* init portofino reference group voting and status */
	/* Disable Reference group Vsys */
	FUNC2(i2c, PM8606_VSYS, PM8606_VSYS_EN, 0);
	/* Disable Internal Oscillator */
	FUNC2(i2c, PM8606_MISC, PM8606_MISC_OSC_EN, 0);

	chip->osc_vote = REF_GP_NO_CLIENTS;
	chip->osc_status = PM8606_REF_GP_OSC_OFF;
}