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
struct retu_dev {int /*<<< orphan*/  irq_data; int /*<<< orphan*/  dev; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 struct retu_dev* FUNC0 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * pm_power_off ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct retu_dev* retu_pm_power_off ; 

__attribute__((used)) static int FUNC3(struct i2c_client *i2c)
{
	struct retu_dev *rdev = FUNC0(i2c);

	if (retu_pm_power_off == rdev) {
		pm_power_off	  = NULL;
		retu_pm_power_off = NULL;
	}
	FUNC1(rdev->dev);
	FUNC2(i2c->irq, rdev->irq_data);

	return 0;
}