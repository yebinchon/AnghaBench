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
struct solo_dev {size_t i2c_msg_ptr; scalar_t__ i2c_msg_num; TYPE_1__* i2c_msg; } ;
struct TYPE_2__ {size_t len; int flags; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int I2C_M_NOSTART ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  SOLO_IIC_TXD ; 
 int /*<<< orphan*/  FUNC0 (struct solo_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct solo_dev *solo_dev)
{
retry_write:
	if (solo_dev->i2c_msg_ptr != solo_dev->i2c_msg->len) {
		FUNC3(solo_dev, SOLO_IIC_TXD,
			       solo_dev->i2c_msg->buf[solo_dev->i2c_msg_ptr]);
		solo_dev->i2c_msg_ptr++;
		FUNC0(solo_dev, 1);
		return 0;
	}

	solo_dev->i2c_msg_ptr = 0;
	solo_dev->i2c_msg++;
	solo_dev->i2c_msg_num--;

	if (solo_dev->i2c_msg_num == 0) {
		FUNC2(solo_dev);
		return 0;
	}

	if (!(solo_dev->i2c_msg->flags & I2C_M_NOSTART)) {
		FUNC1(solo_dev);
	} else {
		if (solo_dev->i2c_msg->flags & I2C_M_RD)
			FUNC2(solo_dev);
		else
			goto retry_write;
	}

	return 0;
}