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
struct video_device {scalar_t__ vfl_dir; } ;
struct v4l2_frequency {int tuner; int /*<<< orphan*/  frequency; int /*<<< orphan*/  type; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct hackrf_dev {unsigned int f_adc; unsigned int f_dac; unsigned int f_rx; unsigned int f_tx; int /*<<< orphan*/  flags; struct usb_interface* intf; } ;
struct file {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; } ;
struct TYPE_3__ {int /*<<< orphan*/  rangehigh; int /*<<< orphan*/  rangelow; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  RX_ADC_FREQUENCY ; 
 int /*<<< orphan*/  RX_RF_FREQUENCY ; 
 int /*<<< orphan*/  TX_DAC_FREQUENCY ; 
 int /*<<< orphan*/  TX_RF_FREQUENCY ; 
 scalar_t__ VFL_DIR_RX ; 
 TYPE_2__* bands_adc_dac ; 
 TYPE_1__* bands_rx_tx ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC2 (struct hackrf_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct video_device* FUNC4 (struct file*) ; 
 struct hackrf_dev* FUNC5 (struct file*) ; 

__attribute__((used)) static int FUNC6(struct file *file, void *priv,
		const struct v4l2_frequency *f)
{
	struct hackrf_dev *dev = FUNC5(file);
	struct usb_interface *intf = dev->intf;
	struct video_device *vdev = FUNC4(file);
	int ret;
	unsigned int uitmp;

	FUNC1(&intf->dev, "tuner=%d type=%d frequency=%u\n",
			f->tuner, f->type, f->frequency);

	if (f->tuner == 0) {
		uitmp = FUNC0(f->frequency, bands_adc_dac[0].rangelow,
			      bands_adc_dac[0].rangehigh);
		if (vdev->vfl_dir == VFL_DIR_RX) {
			dev->f_adc = uitmp;
			FUNC3(RX_ADC_FREQUENCY, &dev->flags);
		} else {
			dev->f_dac = uitmp;
			FUNC3(TX_DAC_FREQUENCY, &dev->flags);
		}
	} else if (f->tuner == 1) {
		uitmp = FUNC0(f->frequency, bands_rx_tx[0].rangelow,
			      bands_rx_tx[0].rangehigh);
		if (vdev->vfl_dir == VFL_DIR_RX) {
			dev->f_rx = uitmp;
			FUNC3(RX_RF_FREQUENCY, &dev->flags);
		} else {
			dev->f_tx = uitmp;
			FUNC3(TX_RF_FREQUENCY, &dev->flags);
		}
	} else {
		ret = -EINVAL;
		goto err;
	}

	ret = FUNC2(dev);
	if (ret)
		goto err;

	return 0;
err:
	FUNC1(&intf->dev, "failed=%d\n", ret);
	return ret;
}