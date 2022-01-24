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
struct i2c_client {int dummy; } ;
struct da9150 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA9150_CONFIG_D ; 
 int /*<<< orphan*/  DA9150_CONTROL_C ; 
 int /*<<< orphan*/  DA9150_DISABLE_MASK ; 
 int /*<<< orphan*/  DA9150_WKUP_PM_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct da9150*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct da9150* FUNC1 (struct i2c_client*) ; 

__attribute__((used)) static void FUNC2(struct i2c_client *client)
{
	struct da9150 *da9150 = FUNC1(client);

	/* Make sure we have a wakup source for the device */
	FUNC0(da9150, DA9150_CONFIG_D,
			DA9150_WKUP_PM_EN_MASK,
			DA9150_WKUP_PM_EN_MASK);

	/* Set device to DISABLED mode */
	FUNC0(da9150, DA9150_CONTROL_C,
			DA9150_DISABLE_MASK, DA9150_DISABLE_MASK);
}