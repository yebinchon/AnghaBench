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
struct lan9303_i2c {int /*<<< orphan*/  chip; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 struct lan9303_i2c* FUNC0 (struct i2c_client*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct i2c_client *client)
{
	struct lan9303_i2c *sw_dev;

	sw_dev = FUNC0(client);
	if (!sw_dev)
		return -ENODEV;

	return FUNC1(&sw_dev->chip);
}