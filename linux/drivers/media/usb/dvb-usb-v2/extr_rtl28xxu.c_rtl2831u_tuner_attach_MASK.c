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
struct rtl28xxu_dev {int tuner; int /*<<< orphan*/  demod_i2c_adapter; } ;
struct dvb_usb_device {TYPE_1__* intf; } ;
struct dvb_usb_adapter {int /*<<< orphan*/ * fe; } ;
struct dvb_frontend {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
#define  TUNER_RTL2830_MT2060 130 
#define  TUNER_RTL2830_MXL5005S 129 
#define  TUNER_RTL2830_QT1010 128 
 struct dvb_usb_device* FUNC0 (struct dvb_usb_adapter*) ; 
 struct rtl28xxu_dev* FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 struct dvb_frontend* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  mt2060_attach ; 
 int /*<<< orphan*/  mxl5005s_attach ; 
 int /*<<< orphan*/  qt1010_attach ; 
 int /*<<< orphan*/  rtl28xxu_mt2060_config ; 
 int /*<<< orphan*/  rtl28xxu_mxl5005s_config ; 
 int /*<<< orphan*/  rtl28xxu_qt1010_config ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap)
{
	int ret;
	struct dvb_usb_device *d = FUNC0(adap);
	struct rtl28xxu_dev *dev = FUNC1(d);
	struct dvb_frontend *fe;

	FUNC2(&d->intf->dev, "\n");

	switch (dev->tuner) {
	case TUNER_RTL2830_QT1010:
		fe = FUNC4(qt1010_attach, adap->fe[0],
				dev->demod_i2c_adapter,
				&rtl28xxu_qt1010_config);
		break;
	case TUNER_RTL2830_MT2060:
		fe = FUNC4(mt2060_attach, adap->fe[0],
				dev->demod_i2c_adapter,
				&rtl28xxu_mt2060_config, 1220);
		break;
	case TUNER_RTL2830_MXL5005S:
		fe = FUNC4(mxl5005s_attach, adap->fe[0],
				dev->demod_i2c_adapter,
				&rtl28xxu_mxl5005s_config);
		break;
	default:
		fe = NULL;
		FUNC3(&d->intf->dev, "unknown tuner %d\n", dev->tuner);
	}

	if (fe == NULL) {
		ret = -ENODEV;
		goto err;
	}

	return 0;
err:
	FUNC2(&d->intf->dev, "failed=%d\n", ret);
	return ret;
}