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
typedef  scalar_t__ u32 ;
struct ov2685 {TYPE_1__* client; } ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 scalar_t__ CHIP_ID ; 
 int /*<<< orphan*/  OV2685_REG_CHIP_ID ; 
 int /*<<< orphan*/  OV2685_REG_VALUE_16BIT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,scalar_t__) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct ov2685 *ov2685,
				  struct i2c_client *client)
{
	struct device *dev = &ov2685->client->dev;
	int ret;
	u32 id = 0;

	ret = FUNC2(client, OV2685_REG_CHIP_ID,
			      OV2685_REG_VALUE_16BIT, &id);
	if (id != CHIP_ID) {
		FUNC0(dev, "Unexpected sensor id(%04x), ret(%d)\n", id, ret);
		return ret;
	}

	FUNC1(dev, "Detected OV%04x sensor\n", CHIP_ID);

	return 0;
}