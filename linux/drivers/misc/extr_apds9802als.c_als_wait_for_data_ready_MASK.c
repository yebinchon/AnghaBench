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
struct device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct i2c_client*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct i2c_client* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct i2c_client *client = FUNC3(dev);
	int ret;
	int retry = 10;

	do {
		FUNC2(30);
		ret = FUNC1(client, 0x86);
	} while (!(ret & 0x80) && retry--);

	if (retry < 0) {
		FUNC0(dev, "timeout waiting for data ready\n");
		return -ETIMEDOUT;
	}

	return 0;
}