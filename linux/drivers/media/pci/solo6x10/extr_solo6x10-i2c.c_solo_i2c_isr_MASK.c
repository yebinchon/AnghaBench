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
typedef  void* u32 ;
struct solo_dev {scalar_t__ i2c_id; int i2c_state; size_t i2c_msg_ptr; TYPE_1__* i2c_msg; } ;
struct TYPE_2__ {int flags; void** buf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*,int) ; 
 int EINVAL ; 
 int ENXIO ; 
 int I2C_M_RD ; 
#define  IIC_STATE_READ 130 
#define  IIC_STATE_START 129 
#define  IIC_STATE_WRITE 128 
 int /*<<< orphan*/  SOLO_IIC_CTRL ; 
 int /*<<< orphan*/  SOLO_IIC_RXD ; 
 int SOLO_IIC_STATE_SIG_ERR ; 
 int SOLO_IIC_STATE_TRNS ; 
 int FUNC1 (struct solo_dev*) ; 
 int FUNC2 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct solo_dev*) ; 
 void* FUNC4 (struct solo_dev*,int /*<<< orphan*/ ) ; 

int FUNC5(struct solo_dev *solo_dev)
{
	u32 status = FUNC4(solo_dev, SOLO_IIC_CTRL);
	int ret = -EINVAL;


	if (FUNC0(status, SOLO_IIC_STATE_TRNS | SOLO_IIC_STATE_SIG_ERR)
	    || solo_dev->i2c_id < 0) {
		FUNC3(solo_dev);
		return -ENXIO;
	}

	switch (solo_dev->i2c_state) {
	case IIC_STATE_START:
		if (solo_dev->i2c_msg->flags & I2C_M_RD) {
			solo_dev->i2c_state = IIC_STATE_READ;
			ret = FUNC1(solo_dev);
			break;
		}

		solo_dev->i2c_state = IIC_STATE_WRITE;
		/* fall through */
	case IIC_STATE_WRITE:
		ret = FUNC2(solo_dev);
		break;

	case IIC_STATE_READ:
		solo_dev->i2c_msg->buf[solo_dev->i2c_msg_ptr] =
			FUNC4(solo_dev, SOLO_IIC_RXD);
		solo_dev->i2c_msg_ptr++;

		ret = FUNC1(solo_dev);
		break;

	default:
		FUNC3(solo_dev);
	}

	return ret;
}