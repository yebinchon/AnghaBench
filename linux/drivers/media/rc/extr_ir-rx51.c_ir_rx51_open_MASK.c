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
struct rc_dev {struct ir_rx51* priv; } ;
struct ir_rx51 {int /*<<< orphan*/  dev; int /*<<< orphan*/  pwm; int /*<<< orphan*/  device_is_open; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct rc_dev *dev)
{
	struct ir_rx51 *ir_rx51 = dev->priv;

	if (FUNC4(1, &ir_rx51->device_is_open))
		return -EBUSY;

	ir_rx51->pwm = FUNC3(ir_rx51->dev, NULL);
	if (FUNC0(ir_rx51->pwm)) {
		int res = FUNC1(ir_rx51->pwm);

		FUNC2(ir_rx51->dev, "pwm_get failed: %d\n", res);
		return res;
	}

	return 0;
}