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
struct TYPE_2__ {int /*<<< orphan*/  addr; int /*<<< orphan*/  adap; } ;
struct tda18271_priv {unsigned char* tda18271_regs; TYPE_1__ i2c_props; int /*<<< orphan*/  id; int /*<<< orphan*/  lock; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 size_t R_ID ; 
 int /*<<< orphan*/  TDA18271HDC1 ; 
 int /*<<< orphan*/  TDA18271HDC2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend *fe)
{
	struct tda18271_priv *priv = fe->tuner_priv;
	unsigned char *regs = priv->tda18271_regs;
	char *name;
	int ret;

	FUNC1(&priv->lock);
	ret = FUNC3(fe);
	FUNC2(&priv->lock);

	if (ret) {
		FUNC4("Error reading device ID @ %d-%04x, bailing out.\n",
			 FUNC0(priv->i2c_props.adap),
			 priv->i2c_props.addr);
		return -EIO;
	}

	switch (regs[R_ID] & 0x7f) {
	case 3:
		name = "TDA18271HD/C1";
		priv->id = TDA18271HDC1;
		break;
	case 4:
		name = "TDA18271HD/C2";
		priv->id = TDA18271HDC2;
		break;
	default:
		FUNC4("Unknown device (%i) detected @ %d-%04x, device not supported.\n",
			 regs[R_ID], FUNC0(priv->i2c_props.adap),
			 priv->i2c_props.addr);
		return -EINVAL;
	}

	FUNC4("%s detected @ %d-%04x\n", name,
		 FUNC0(priv->i2c_props.adap), priv->i2c_props.addr);

	return 0;
}