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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_usb_device {int /*<<< orphan*/  i2c_mutex; TYPE_1__* udev; struct cxusb_state* priv; } ;
struct cxusb_state {int* gpio_write_refresh; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned int FUNC0 (int*) ; 
 int /*<<< orphan*/  CMD_ANALOG ; 
 int /*<<< orphan*/  CMD_DIGITAL ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC10(struct dvb_usb_device *dvbdev, bool digital)
{
	struct cxusb_state *st = dvbdev->priv;
	int ret;
	u8 b;
	unsigned int i;

	/*
	 * switching mode while doing an I2C transaction often causes
	 * the device to crash
	 */
	FUNC4(&dvbdev->i2c_mutex);

	if (digital) {
		ret = FUNC8(dvbdev->udev, 0, 6);
		if (ret != 0) {
			FUNC2(&dvbdev->udev->dev,
				"digital interface selection failed (%d)\n",
				ret);
			goto ret_unlock;
		}
	} else {
		ret = FUNC8(dvbdev->udev, 0, 1);
		if (ret != 0) {
			FUNC2(&dvbdev->udev->dev,
				"analog interface selection failed (%d)\n",
				ret);
			goto ret_unlock;
		}
	}

	/* pipes need to be cleared after setting interface */
	ret = FUNC6(dvbdev->udev, FUNC7(dvbdev->udev, 1));
	if (ret != 0)
		FUNC3(&dvbdev->udev->dev,
			 "clear halt on IN pipe failed (%d)\n",
			 ret);

	ret = FUNC6(dvbdev->udev, FUNC9(dvbdev->udev, 1));
	if (ret != 0)
		FUNC3(&dvbdev->udev->dev,
			 "clear halt on OUT pipe failed (%d)\n",
			 ret);

	ret = FUNC1(dvbdev, digital ? CMD_DIGITAL : CMD_ANALOG,
			     NULL, 0, &b, 1);
	if (ret != 0) {
		FUNC2(&dvbdev->udev->dev, "mode switch failed (%d)\n",
			ret);
		goto ret_unlock;
	}

	/* mode switch seems to reset GPIO states */
	for (i = 0; i < FUNC0(st->gpio_write_refresh); i++)
		st->gpio_write_refresh[i] = true;

ret_unlock:
	FUNC5(&dvbdev->i2c_mutex);

	return ret;
}