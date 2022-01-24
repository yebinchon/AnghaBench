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
struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; int /*<<< orphan*/  irq; } ;
typedef  enum stmpe_partnum { ____Placeholder_stmpe_partnum } stmpe_partnum ;
struct TYPE_3__ {int /*<<< orphan*/ * dev; struct i2c_client* client; int /*<<< orphan*/  irq; void* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__ i2c_ci ; 
 struct of_device_id* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stmpe_of_match ; 
 int FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static int
FUNC3(struct i2c_client *i2c, const struct i2c_device_id *id)
{
	enum stmpe_partnum partnum;
	const struct of_device_id *of_id;

	i2c_ci.data = (void *)id;
	i2c_ci.irq = i2c->irq;
	i2c_ci.client = i2c;
	i2c_ci.dev = &i2c->dev;

	of_id = FUNC1(stmpe_of_match, &i2c->dev);
	if (!of_id) {
		/*
		 * This happens when the I2C ID matches the node name
		 * but no real compatible string has been given.
		 */
		FUNC0(&i2c->dev, "matching on node name, compatible is preferred\n");
		partnum = id->driver_data;
	} else
		partnum = (enum stmpe_partnum)of_id->data;

	return FUNC2(&i2c_ci, partnum);
}