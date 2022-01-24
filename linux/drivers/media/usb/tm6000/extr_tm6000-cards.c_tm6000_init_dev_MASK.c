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
struct v4l2_frequency {int frequency; int /*<<< orphan*/  type; scalar_t__ tuner; } ;
struct TYPE_2__ {scalar_t__ has_tda9874; } ;
struct tm6000_core {int width; int height; int freq; int /*<<< orphan*/  lock; int /*<<< orphan*/  i2c_adap; int /*<<< orphan*/  v4l2_dev; TYPE_1__ caps; struct v4l2_frequency* norm; int /*<<< orphan*/  model; } ;

/* Variables and functions */
 int /*<<< orphan*/  I2C_ADDR_TDA9874 ; 
 struct v4l2_frequency* V4L2_STD_NTSC_M ; 
 int /*<<< orphan*/  V4L2_TUNER_ANALOG_TV ; 
 int FUNC0 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tm6000_core*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  s_std ; 
 int /*<<< orphan*/  FUNC6 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC7 (struct tm6000_core*) ; 
 int FUNC8 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC9 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC10 (struct tm6000_core*) ; 
 int FUNC11 (struct tm6000_core*) ; 
 int /*<<< orphan*/  tuner ; 
 int /*<<< orphan*/  FUNC12 (struct tm6000_core*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC15(struct tm6000_core *dev)
{
	struct v4l2_frequency f;
	int rc = 0;

	FUNC2(&dev->lock);
	FUNC3(&dev->lock);

	if (!FUNC1(dev->model)) {
		rc = FUNC0(dev);
		if (rc < 0)
			goto err;

		/* register i2c bus */
		rc = FUNC8(dev);
		if (rc < 0)
			goto err;
	} else {
		/* register i2c bus */
		rc = FUNC8(dev);
		if (rc < 0)
			goto err;

		FUNC12(dev);

		rc = FUNC0(dev);
		if (rc < 0)
			goto err;
	}

	/* Default values for STD and resolutions */
	dev->width = 720;
	dev->height = 480;
	dev->norm = V4L2_STD_NTSC_M;

	/* Configure tuner */
	FUNC7(dev);

	/* Set video standard */
	FUNC13(&dev->v4l2_dev, 0, video, s_std, dev->norm);

	/* Set tuner frequency - also loads firmware on xc2028/xc3028 */
	f.tuner = 0;
	f.type = V4L2_TUNER_ANALOG_TV;
	f.frequency = 3092;	/* 193.25 MHz */
	dev->freq = f.frequency;
	FUNC13(&dev->v4l2_dev, 0, tuner, s_frequency, &f);

	if (dev->caps.has_tda9874)
		FUNC14(&dev->v4l2_dev, &dev->i2c_adap,
			"tvaudio", I2C_ADDR_TDA9874, NULL);

	/* register and initialize V4L2 */
	rc = FUNC11(dev);
	if (rc < 0)
		goto err;

	FUNC6(dev);
	FUNC9(dev);

	FUNC10(dev);

	FUNC5(dev);

	FUNC4(&dev->lock);
	return 0;

err:
	FUNC4(&dev->lock);
	return rc;
}