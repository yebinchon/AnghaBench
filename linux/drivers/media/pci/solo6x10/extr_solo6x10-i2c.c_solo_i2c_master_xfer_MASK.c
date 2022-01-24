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
struct solo_dev {int i2c_id; int i2c_msg_num; scalar_t__ i2c_state; int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  i2c_wait; scalar_t__ i2c_msg_ptr; struct i2c_msg* i2c_msg; struct i2c_adapter* i2c_adap; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {struct solo_dev* algo_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int HZ ; 
 scalar_t__ IIC_STATE_IDLE ; 
 scalar_t__ IIC_STATE_STOP ; 
 int SOLO_I2C_ADAPTERS ; 
 int /*<<< orphan*/  SOLO_IIC_CTRL ; 
 int /*<<< orphan*/  SOLO_IRQ_IIC ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct solo_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct solo_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct solo_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static int FUNC10(struct i2c_adapter *adap,
				struct i2c_msg msgs[], int num)
{
	struct solo_dev *solo_dev = adap->algo_data;
	unsigned long timeout;
	int ret;
	int i;
	FUNC0(wait);

	for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
		if (&solo_dev->i2c_adap[i] == adap)
			break;
	}

	if (i == SOLO_I2C_ADAPTERS)
		return num; /* XXX Right return value for failure? */

	FUNC2(&solo_dev->i2c_mutex);
	solo_dev->i2c_id = i;
	solo_dev->i2c_msg = msgs;
	solo_dev->i2c_msg_num = num;
	solo_dev->i2c_msg_ptr = 0;

	FUNC9(solo_dev, SOLO_IIC_CTRL, 0);
	FUNC8(solo_dev, SOLO_IRQ_IIC);
	FUNC7(solo_dev);

	timeout = HZ / 2;

	for (;;) {
		FUNC4(&solo_dev->i2c_wait, &wait,
				TASK_INTERRUPTIBLE);

		if (solo_dev->i2c_state == IIC_STATE_STOP)
			break;

		timeout = FUNC5(timeout);
		if (!timeout)
			break;

		if (FUNC6(current))
			break;
	}

	FUNC1(&solo_dev->i2c_wait, &wait);
	ret = num - solo_dev->i2c_msg_num;
	solo_dev->i2c_state = IIC_STATE_IDLE;
	solo_dev->i2c_id = -1;

	FUNC3(&solo_dev->i2c_mutex);

	return ret;
}