#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rk808 {int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_OFF ; 
 int /*<<< orphan*/  RK805_DEV_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct rk808* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* rk808_i2c_client ; 

__attribute__((used)) static void FUNC3(void)
{
	int ret;
	struct rk808 *rk808 = FUNC1(rk808_i2c_client);

	if (!rk808)
		return;

	ret = FUNC2(rk808->regmap,
				 RK805_DEV_CTRL_REG,
				 DEV_OFF, DEV_OFF);
	if (ret)
		FUNC0(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
}