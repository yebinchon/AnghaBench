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
struct ov8856 {int /*<<< orphan*/  sd; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OV8856_MODE_STANDBY ; 
 int /*<<< orphan*/  OV8856_REG_MODE_SELECT ; 
 int /*<<< orphan*/  OV8856_REG_VALUE_08BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (struct ov8856*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct i2c_client* FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct ov8856 *ov8856)
{
	struct i2c_client *client = FUNC2(&ov8856->sd);

	if (FUNC1(ov8856, OV8856_REG_MODE_SELECT,
			     OV8856_REG_VALUE_08BIT, OV8856_MODE_STANDBY))
		FUNC0(&client->dev, "failed to set stream");
}