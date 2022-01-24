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
struct et8ek8_sensor {int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ET8EK8_REG_8BIT ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ ,int,int) ; 
 struct i2c_client* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct et8ek8_sensor *sensor)
{
	struct i2c_client *client = FUNC1(&sensor->subdev);

	return FUNC0(client, ET8EK8_REG_8BIT, 0x1252, 0xb0);
}