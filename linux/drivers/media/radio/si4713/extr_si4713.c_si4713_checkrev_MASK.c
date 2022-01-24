#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct si4713_device {int /*<<< orphan*/  sd; } ;
struct i2c_client {int addr; TYPE_1__* adapter; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  DEFAULT_TIMEOUT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SI4713_CMD_GET_REV ; 
 int SI4713_GETREV_NRESP ; 
 scalar_t__ SI4713_PRODUCT_NUMBER ; 
 int FUNC1 (struct si4713_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct si4713_device *sdev)
{
	struct i2c_client *client = FUNC3(&sdev->sd);
	int rval;
	u8 resp[SI4713_GETREV_NRESP];

	rval = FUNC1(sdev, SI4713_CMD_GET_REV,
					NULL, 0,
					resp, FUNC0(resp),
					DEFAULT_TIMEOUT);

	if (rval < 0)
		return rval;

	if (resp[1] == SI4713_PRODUCT_NUMBER) {
		FUNC4(&sdev->sd, "chip found @ 0x%02x (%s)\n",
				client->addr << 1, client->adapter->name);
	} else {
		FUNC2(&sdev->sd, "Invalid product number 0x%X\n", resp[1]);
		rval = -EINVAL;
	}
	return rval;
}