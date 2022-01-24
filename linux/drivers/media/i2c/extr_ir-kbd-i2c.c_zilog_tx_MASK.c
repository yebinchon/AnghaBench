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
typedef  int u8 ;
struct rc_dev {struct IR_i2c* priv; } ;
struct code_block {int length; } ;
struct IR_i2c {int /*<<< orphan*/  lock; TYPE_1__* rc; int /*<<< orphan*/  tx_c; } ;
typedef  int /*<<< orphan*/  code_block ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int ZILOG_SEND ; 
 int ZILOG_STATUS_OK ; 
 int ZILOG_STATUS_SET ; 
 int /*<<< orphan*/  ZILOG_UIR_END ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct IR_i2c*,int /*<<< orphan*/ ,struct code_block*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct rc_dev*,unsigned int*,unsigned int,struct code_block*) ; 

__attribute__((used)) static int FUNC11(struct rc_dev *rcdev, unsigned int *txbuf,
		    unsigned int count)
{
	struct IR_i2c *ir = rcdev->priv;
	struct code_block code_block = { .length = sizeof(code_block) };
	u8 buf[2];
	int ret, i;

	ret = FUNC10(rcdev, txbuf, count, &code_block);
	if (ret)
		return ret;

	ret = FUNC5(&ir->lock);
	if (ret)
		return ret;

	ret = FUNC8(ir, ZILOG_UIR_END, &code_block);
	if (ret)
		goto out_unlock;

	ret = FUNC2(ir->tx_c, buf, 1);
	if (ret != 1) {
		FUNC1(&ir->rc->dev, "i2c_master_recv failed with %d\n", ret);
		goto out_unlock;
	}

	FUNC0(&ir->rc->dev, "code set status: %02x\n", buf[0]);

	if (buf[0] != (ZILOG_STATUS_OK | ZILOG_STATUS_SET)) {
		FUNC1(&ir->rc->dev, "unexpected IR TX response %02x\n",
			buf[0]);
		ret = -EIO;
		goto out_unlock;
	}

	buf[0] = 0x00;
	buf[1] = ZILOG_SEND;

	ret = FUNC3(ir->tx_c, buf, 2);
	if (ret != 2) {
		FUNC1(&ir->rc->dev, "i2c_master_send failed with %d\n", ret);
		if (ret >= 0)
			ret = -EIO;
		goto out_unlock;
	}

	FUNC0(&ir->rc->dev, "send command sent\n");

	/*
	 * This bit NAKs until the device is ready, so we retry it
	 * sleeping a bit each time.  This seems to be what the windows
	 * driver does, approximately.
	 * Try for up to 1s.
	 */
	for (i = 0; i < 20; ++i) {
		FUNC9(TASK_UNINTERRUPTIBLE);
		FUNC7(FUNC4(50));
		ret = FUNC3(ir->tx_c, buf, 1);
		if (ret == 1)
			break;
		FUNC0(&ir->rc->dev,
			"NAK expected: i2c_master_send failed with %d (try %d)\n",
			ret, i + 1);
	}

	if (ret != 1) {
		FUNC1(&ir->rc->dev,
			"IR TX chip never got ready: last i2c_master_send failed with %d\n",
			ret);
		if (ret >= 0)
			ret = -EIO;
		goto out_unlock;
	}

	i = FUNC2(ir->tx_c, buf, 1);
	if (i != 1) {
		FUNC1(&ir->rc->dev, "i2c_master_recv failed with %d\n", ret);
		ret = -EIO;
		goto out_unlock;
	} else if (buf[0] != ZILOG_STATUS_OK) {
		FUNC1(&ir->rc->dev, "unexpected IR TX response #2: %02x\n",
			buf[0]);
		ret = -EIO;
		goto out_unlock;
	}
	FUNC0(&ir->rc->dev, "transmit complete\n");

	/* Oh good, it worked */
	ret = count;
out_unlock:
	FUNC6(&ir->lock);

	return ret;
}