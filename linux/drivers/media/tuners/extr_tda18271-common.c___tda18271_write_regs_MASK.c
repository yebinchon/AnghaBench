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
struct TYPE_2__ {int /*<<< orphan*/  adap; int /*<<< orphan*/  addr; } ;
struct tda18271_priv {unsigned char* tda18271_regs; int small_i2c; TYPE_1__ i2c_props; } ;
struct i2c_msg {unsigned char* buf; int len; int /*<<< orphan*/  flags; int /*<<< orphan*/  addr; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I2C_LOCK_SEGMENT ; 
#define  TDA18271_03_BYTE_CHUNK_INIT 131 
#define  TDA18271_08_BYTE_CHUNK_INIT 130 
#define  TDA18271_16_BYTE_CHUNK_INIT 129 
#define  TDA18271_39_BYTE_CHUNK_INIT 128 
 int /*<<< orphan*/  TDA18271_NUM_REGS ; 
 int FUNC1 (int /*<<< orphan*/ ,struct i2c_msg*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe, int idx, int len,
			bool lock_i2c)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;
	unsigned char buf[TDA18271_NUM_REGS + 1];
	struct i2c_msg msg = { .addr = priv->i2c_props.addr, .flags = 0,
			       .buf = buf };
	int i, ret = 1, max;

	FUNC0((len == 0) || (idx + len > sizeof(buf)));

	switch (priv->small_i2c) {
	case TDA18271_03_BYTE_CHUNK_INIT:
		max = 3;
		break;
	case TDA18271_08_BYTE_CHUNK_INIT:
		max = 8;
		break;
	case TDA18271_16_BYTE_CHUNK_INIT:
		max = 16;
		break;
	case TDA18271_39_BYTE_CHUNK_INIT:
	default:
		max = 39;
	}


	/*
	 * If lock_i2c is true, it will take the I2C bus for tda18271 private
	 * usage during the entire write ops, as otherwise, bad things could
	 * happen.
	 * During device init, several write operations will happen. So,
	 * tda18271_init_regs controls the I2C lock directly,
	 * disabling lock_i2c here.
	 */
	if (lock_i2c) {
		FUNC4(fe, 1);
		FUNC2(priv->i2c_props.adap, I2C_LOCK_SEGMENT);
	}
	while (len) {
		if (max > len)
			max = len;

		buf[0] = idx;
		for (i = 1; i <= max; i++)
			buf[i] = regs[idx - 1 + i];

		msg.len = max + 1;

		/* write registers */
		ret = FUNC1(priv->i2c_props.adap, &msg, 1);
		if (ret != 1)
			break;

		idx += max;
		len -= max;
	}
	if (lock_i2c) {
		FUNC3(priv->i2c_props.adap, I2C_LOCK_SEGMENT);
		FUNC4(fe, 0);
	}

	if (ret != 1)
		FUNC5("ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\n",
			idx, max, ret);

	return (ret == 1 ? 0 : ret);
}