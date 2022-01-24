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
struct rj54n1 {int /*<<< orphan*/  subdev; int /*<<< orphan*/  hdl; int /*<<< orphan*/  clk; scalar_t__ pwup_gpio; scalar_t__ enable_gpio; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct rj54n1* FUNC2 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client)
{
	struct rj54n1 *rj54n1 = FUNC2(client);

	if (rj54n1->enable_gpio)
		FUNC1(rj54n1->enable_gpio);
	if (rj54n1->pwup_gpio)
		FUNC1(rj54n1->pwup_gpio);

	FUNC0(rj54n1->clk);
	FUNC4(&rj54n1->hdl);
	FUNC3(&rj54n1->subdev);

	return 0;
}