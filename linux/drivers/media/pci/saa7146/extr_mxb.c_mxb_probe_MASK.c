#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct v4l2_ctrl_handler {int error; } ;
struct saa7146_dev {struct mxb* ext_priv; int /*<<< orphan*/  v4l2_dev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct mxb {TYPE_1__ i2c_adapter; void* tuner; void* saa7111a; void* tda9840; void* tea6415c; void* tea6420_2; void* tea6420_1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  I2C_SAA7111A ; 
 int /*<<< orphan*/  I2C_TDA9840 ; 
 int /*<<< orphan*/  I2C_TEA6415C ; 
 int /*<<< orphan*/  I2C_TEA6420_1 ; 
 int /*<<< orphan*/  I2C_TEA6420_2 ; 
 int /*<<< orphan*/  I2C_TUNER ; 
 int /*<<< orphan*/  SAA7146_I2C_BUS_BIT_RATE_480 ; 
 int /*<<< orphan*/  V4L2_CID_AUDIO_MUTE ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct mxb*) ; 
 struct mxb* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mxb_ctrl_ops ; 
 int mxb_num ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (struct saa7146_dev*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct v4l2_ctrl_handler*) ; 
 int /*<<< orphan*/  FUNC10 (struct v4l2_ctrl_handler*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *,TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct saa7146_dev *dev)
{
	struct v4l2_ctrl_handler *hdl = &dev->ctrl_handler;
	struct mxb *mxb = NULL;

	FUNC10(hdl, &mxb_ctrl_ops,
			V4L2_CID_AUDIO_MUTE, 0, 1, 1, 1);
	if (hdl->error)
		return hdl->error;
	mxb = FUNC5(sizeof(struct mxb), GFP_KERNEL);
	if (mxb == NULL) {
		FUNC0("not enough kernel memory\n");
		return -ENOMEM;
	}


	FUNC8(mxb->i2c_adapter.name, sizeof(mxb->i2c_adapter.name), "mxb%d", mxb_num);

	FUNC7(dev, &mxb->i2c_adapter, SAA7146_I2C_BUS_BIT_RATE_480);
	if (FUNC2(&mxb->i2c_adapter) < 0) {
		FUNC1("cannot register i2c-device. skipping.\n");
		FUNC4(mxb);
		return -EFAULT;
	}

	mxb->saa7111a = FUNC11(&dev->v4l2_dev, &mxb->i2c_adapter,
			"saa7111", I2C_SAA7111A, NULL);
	mxb->tea6420_1 = FUNC11(&dev->v4l2_dev, &mxb->i2c_adapter,
			"tea6420", I2C_TEA6420_1, NULL);
	mxb->tea6420_2 = FUNC11(&dev->v4l2_dev, &mxb->i2c_adapter,
			"tea6420", I2C_TEA6420_2, NULL);
	mxb->tea6415c = FUNC11(&dev->v4l2_dev, &mxb->i2c_adapter,
			"tea6415c", I2C_TEA6415C, NULL);
	mxb->tda9840 = FUNC11(&dev->v4l2_dev, &mxb->i2c_adapter,
			"tda9840", I2C_TDA9840, NULL);
	mxb->tuner = FUNC11(&dev->v4l2_dev, &mxb->i2c_adapter,
			"tuner", I2C_TUNER, NULL);

	/* check if all devices are present */
	if (!mxb->tea6420_1 || !mxb->tea6420_2 || !mxb->tea6415c ||
	    !mxb->tda9840 || !mxb->saa7111a || !mxb->tuner) {
		FUNC6("did not find all i2c devices. aborting\n");
		FUNC3(&mxb->i2c_adapter);
		FUNC4(mxb);
		return -ENODEV;
	}

	/* all devices are present, probe was successful */

	/* we store the pointer in our private data field */
	dev->ext_priv = mxb;

	FUNC9(hdl);

	return 0;
}