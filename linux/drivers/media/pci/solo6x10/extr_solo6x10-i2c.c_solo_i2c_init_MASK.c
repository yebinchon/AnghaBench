#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct solo_dev {int i2c_id; struct i2c_adapter* i2c_adap; TYPE_2__* pdev; int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  i2c_wait; int /*<<< orphan*/  i2c_state; } ;
struct TYPE_3__ {int /*<<< orphan*/ * parent; } ;
struct i2c_adapter {int retries; struct solo_dev* algo_data; TYPE_1__ dev; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_NAME_SIZE ; 
 int /*<<< orphan*/  IIC_STATE_IDLE ; 
 char* SOLO6X10_NAME ; 
 int SOLO_I2C_ADAPTERS ; 
 int /*<<< orphan*/  SOLO_IIC_CFG ; 
 int SOLO_IIC_ENABLE ; 
 int FUNC0 (int) ; 
 int FUNC1 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  solo_i2c_algo ; 
 int /*<<< orphan*/  FUNC6 (struct solo_dev*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct solo_dev *solo_dev)
{
	int i;
	int ret;

	FUNC6(solo_dev, SOLO_IIC_CFG,
		       FUNC0(8) | SOLO_IIC_ENABLE);

	solo_dev->i2c_id = -1;
	solo_dev->i2c_state = IIC_STATE_IDLE;
	FUNC3(&solo_dev->i2c_wait);
	FUNC4(&solo_dev->i2c_mutex);

	for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
		struct i2c_adapter *adap = &solo_dev->i2c_adap[i];

		FUNC5(adap->name, I2C_NAME_SIZE, "%s I2C %d",
			 SOLO6X10_NAME, i);
		adap->algo = &solo_i2c_algo;
		adap->algo_data = solo_dev;
		adap->retries = 1;
		adap->dev.parent = &solo_dev->pdev->dev;

		ret = FUNC1(adap);
		if (ret) {
			adap->algo_data = NULL;
			break;
		}
	}

	if (ret) {
		for (i = 0; i < SOLO_I2C_ADAPTERS; i++) {
			if (!solo_dev->i2c_adap[i].algo_data)
				break;
			FUNC2(&solo_dev->i2c_adap[i]);
			solo_dev->i2c_adap[i].algo_data = NULL;
		}
		return ret;
	}

	return 0;
}