#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct saa7146_pci_extension_data {int dummy; } ;
struct saa7146_dev {struct hexium* ext_priv; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct hexium {TYPE_4__ i2c_adapter; int /*<<< orphan*/  video_dev; scalar_t__ cur_input; int /*<<< orphan*/  cur_std; } ;
struct TYPE_7__ {int /*<<< orphan*/  vidioc_s_input; int /*<<< orphan*/  vidioc_g_input; int /*<<< orphan*/  vidioc_enum_input; } ;
struct TYPE_8__ {TYPE_1__ vid_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DD1_INIT ; 
 int /*<<< orphan*/  DD1_STREAM_B ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MASK_08 ; 
 int MASK_09 ; 
 int MASK_10 ; 
 int MASK_24 ; 
 int MASK_25 ; 
 int MASK_26 ; 
 int /*<<< orphan*/  MC1 ; 
 int /*<<< orphan*/  MC2 ; 
 int /*<<< orphan*/  SAA7146_GPIO_OUTHI ; 
 int /*<<< orphan*/  SAA7146_I2C_BUS_BIT_RATE_480 ; 
 int /*<<< orphan*/  V4L2_STD_PAL ; 
 int /*<<< orphan*/  VFL_TYPE_GRABBER ; 
 int /*<<< orphan*/  FUNC2 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  hexium_num ; 
 int /*<<< orphan*/  hexium_pal ; 
 int /*<<< orphan*/  FUNC3 (struct hexium*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hexium*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (struct hexium*) ; 
 struct hexium* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct saa7146_dev*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *,struct saa7146_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct saa7146_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct saa7146_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (struct saa7146_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct saa7146_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  vidioc_enum_input ; 
 int /*<<< orphan*/  vidioc_g_input ; 
 int /*<<< orphan*/  vidioc_s_input ; 
 TYPE_2__ vv_data ; 

__attribute__((used)) static int FUNC18(struct saa7146_dev *dev, struct saa7146_pci_extension_data *info)
{
	struct hexium *hexium;
	int ret;

	FUNC0("\n");

	hexium = FUNC8(sizeof(*hexium), GFP_KERNEL);
	if (!hexium)
		return -ENOMEM;

	dev->ext_priv = hexium;

	/* enable i2c-port pins */
	FUNC16(dev, MC1, (MASK_08 | MASK_24 | MASK_10 | MASK_26));

	FUNC17(hexium->i2c_adapter.name, "hexium gemini",
		sizeof(hexium->i2c_adapter.name));
	FUNC11(dev, &hexium->i2c_adapter, SAA7146_I2C_BUS_BIT_RATE_480);
	if (FUNC5(&hexium->i2c_adapter) < 0) {
		FUNC1("cannot register i2c-device. skipping.\n");
		FUNC7(hexium);
		return -EFAULT;
	}

	/*  set HWControl GPIO number 2 */
	FUNC13(dev, 2, SAA7146_GPIO_OUTHI);

	FUNC16(dev, DD1_INIT, 0x07000700);
	FUNC16(dev, DD1_STREAM_B, 0x00000000);
	FUNC16(dev, MC2, (MASK_09 | MASK_25 | MASK_10 | MASK_26));

	/* the rest */
	hexium->cur_input = 0;
	FUNC2(dev);

	FUNC4(hexium, hexium_pal);
	hexium->cur_std = V4L2_STD_PAL;

	FUNC3(hexium, 0);
	hexium->cur_input = 0;

	FUNC14(dev, &vv_data);

	vv_data.vid_ops.vidioc_enum_input = vidioc_enum_input;
	vv_data.vid_ops.vidioc_g_input = vidioc_g_input;
	vv_data.vid_ops.vidioc_s_input = vidioc_s_input;
	ret = FUNC12(&hexium->video_dev, dev, "hexium gemini", VFL_TYPE_GRABBER);
	if (ret < 0) {
		FUNC9("cannot register capture v4l2 device. skipping.\n");
		FUNC15(dev);
		FUNC6(&hexium->i2c_adapter);
		FUNC7(hexium);
		return ret;
	}

	FUNC10("found 'hexium gemini' frame grabber-%d\n", hexium_num);
	hexium_num++;

	return 0;
}