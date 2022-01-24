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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ov2680_dev {struct i2c_client* i2c_client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ov2680_dev *sensor, u16 reg,
			      unsigned int len, u32 val)
{
	struct i2c_client *client = sensor->i2c_client;
	u8 buf[6];
	int ret;

	if (len > 4)
		return -EINVAL;

	FUNC2(reg, buf);
	FUNC3(val << (8 * (4 - len)), buf + 2);
	ret = FUNC1(client, buf, len + 2);
	if (ret != len + 2) {
		FUNC0(&client->dev, "write error: reg=0x%4x: %d\n", reg, ret);
		return -EIO;
	}

	return 0;
}