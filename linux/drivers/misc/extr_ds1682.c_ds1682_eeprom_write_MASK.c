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
struct kobject {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct file {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 scalar_t__ DS1682_REG_EEPROM ; 
 size_t EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,scalar_t__,size_t) ; 
 scalar_t__ FUNC1 (struct i2c_client*,scalar_t__,size_t,char*) ; 
 struct i2c_client* FUNC2 (struct kobject*) ; 

__attribute__((used)) static ssize_t FUNC3(struct file *filp, struct kobject *kobj,
				   struct bin_attribute *attr,
				   char *buf, loff_t off, size_t count)
{
	struct i2c_client *client = FUNC2(kobj);

	FUNC0(&client->dev, "ds1682_eeprom_write(p=%p, off=%lli, c=%zi)\n",
		buf, off, count);

	/* Write out to the device */
	if (FUNC1(client, DS1682_REG_EEPROM + off,
					   count, buf) < 0)
		return -EIO;

	return count;
}