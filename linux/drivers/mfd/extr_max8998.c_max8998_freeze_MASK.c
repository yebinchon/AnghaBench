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
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  val; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* max8998_dump ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC2 (struct device*) ; 

__attribute__((used)) static int FUNC3(struct device *dev)
{
	struct i2c_client *i2c = FUNC2(dev);
	int i;

	for (i = 0; i < FUNC0(max8998_dump); i++)
		FUNC1(i2c, max8998_dump[i].addr,
				&max8998_dump[i].val);

	return 0;
}