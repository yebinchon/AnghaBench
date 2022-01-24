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
struct rk808 {scalar_t__ variant; int /*<<< orphan*/  regmap; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ RK809_ID ; 
 scalar_t__ RK817_ID ; 
 int /*<<< orphan*/  RK817_SLPPIN_FUNC_MSK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SLPPIN_DN_FUN ; 
 scalar_t__ SYSTEM_POWER_OFF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct rk808* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* rk808_i2c_client ; 
 scalar_t__ system_state ; 

__attribute__((used)) static void FUNC4(void)
{
	struct rk808 *rk808 = FUNC2(rk808_i2c_client);
	int ret;

	if (system_state == SYSTEM_POWER_OFF &&
	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
		ret = FUNC3(rk808->regmap,
					 FUNC0(3),
					 RK817_SLPPIN_FUNC_MSK,
					 SLPPIN_DN_FUN);
		if (ret) {
			FUNC1(&rk808_i2c_client->dev,
				 "Cannot switch to power down function\n");
		}
	}
}