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
typedef  int /*<<< orphan*/  uint8_t ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct i2c_client*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct i2c_client *client,
				 int reg, uint8_t val)
{
	int ret;

	ret = FUNC1(client, reg, val);
	if (ret < 0) {
		FUNC0(&client->dev, "failed writing 0x%02x to 0x%02x\n",
				val, reg);
		return ret;
	}
	return 0;
}