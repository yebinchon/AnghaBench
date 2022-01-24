#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {int error; } ;
struct TYPE_6__ {TYPE_2__* ctrl_handler; } ;
struct msi001_dev {TYPE_2__ hdl; TYPE_1__ sd; void* if_gain; void* mixer_gain; void* lna_gain; void* bandwidth_auto; void* bandwidth; int /*<<< orphan*/  f_tuner; struct spi_device* spi; } ;
struct TYPE_8__ {int /*<<< orphan*/  rangelow; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_BANDWIDTH ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_BANDWIDTH_AUTO ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_IF_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_LNA_GAIN ; 
 int /*<<< orphan*/  V4L2_CID_RF_TUNER_MIXER_GAIN ; 
 TYPE_5__* bands ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct msi001_dev*) ; 
 struct msi001_dev* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msi001_ctrl_ops ; 
 int /*<<< orphan*/  msi001_ops ; 
 int /*<<< orphan*/  FUNC4 (int,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 
 void* FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct spi_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct spi_device *spi)
{
	struct msi001_dev *dev;
	int ret;

	FUNC0(&spi->dev, "\n");

	dev = FUNC3(sizeof(*dev), GFP_KERNEL);
	if (!dev) {
		ret = -ENOMEM;
		goto err;
	}

	dev->spi = spi;
	dev->f_tuner = bands[0].rangelow;
	FUNC8(&dev->sd, spi, &msi001_ops);

	/* Register controls */
	FUNC6(&dev->hdl, 5);
	dev->bandwidth_auto = FUNC7(&dev->hdl, &msi001_ctrl_ops,
			V4L2_CID_RF_TUNER_BANDWIDTH_AUTO, 0, 1, 1, 1);
	dev->bandwidth = FUNC7(&dev->hdl, &msi001_ctrl_ops,
			V4L2_CID_RF_TUNER_BANDWIDTH, 200000, 8000000, 1, 200000);
	FUNC4(2, &dev->bandwidth_auto, 0, false);
	dev->lna_gain = FUNC7(&dev->hdl, &msi001_ctrl_ops,
			V4L2_CID_RF_TUNER_LNA_GAIN, 0, 1, 1, 1);
	dev->mixer_gain = FUNC7(&dev->hdl, &msi001_ctrl_ops,
			V4L2_CID_RF_TUNER_MIXER_GAIN, 0, 1, 1, 1);
	dev->if_gain = FUNC7(&dev->hdl, &msi001_ctrl_ops,
			V4L2_CID_RF_TUNER_IF_GAIN, 0, 59, 1, 0);
	if (dev->hdl.error) {
		ret = dev->hdl.error;
		FUNC1(&spi->dev, "Could not initialize controls\n");
		/* control init failed, free handler */
		goto err_ctrl_handler_free;
	}

	dev->sd.ctrl_handler = &dev->hdl;
	return 0;
err_ctrl_handler_free:
	FUNC5(&dev->hdl);
	FUNC2(dev);
err:
	return ret;
}