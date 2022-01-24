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
typedef  char u8 ;
struct tps6507x_dev {struct i2c_client* i2c_client; } ;
struct i2c_client {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int TPS6507X_MAX_REGISTER ; 
 int FUNC0 (struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,void*,int) ; 

__attribute__((used)) static int FUNC2(struct tps6507x_dev *tps6507x, char reg,
				   int bytes, void *src)
{
	struct i2c_client *i2c = tps6507x->i2c_client;
	/* we add 1 byte for device register */
	u8 msg[TPS6507X_MAX_REGISTER + 1];
	int ret;

	if (bytes > TPS6507X_MAX_REGISTER)
		return -EINVAL;

	msg[0] = reg;
	FUNC1(&msg[1], src, bytes);

	ret = FUNC0(i2c, msg, bytes + 1);
	if (ret < 0)
		return ret;
	if (ret != bytes + 1)
		return -EIO;
	return 0;
}