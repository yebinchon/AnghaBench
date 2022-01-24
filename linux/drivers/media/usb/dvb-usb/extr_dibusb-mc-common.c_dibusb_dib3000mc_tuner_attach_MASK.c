#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct i2c_adapter {int dummy; } ;
struct dvb_usb_adapter {TYPE_3__* fe_adap; TYPE_4__* dev; struct dibusb_state* priv; } ;
struct dibusb_state {int mt2060_present; } ;
struct TYPE_8__ {TYPE_2__* udev; } ;
struct TYPE_7__ {int /*<<< orphan*/  fe; } ;
struct TYPE_5__ {int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct TYPE_6__ {TYPE_1__ descriptor; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVB_PLL_ENV57H1XD5 ; 
 int ENOMEM ; 
 scalar_t__ USB_PID_DIBCOM_MOD3001_WARM ; 
 scalar_t__ USB_PID_LITEON_DVB_T_WARM ; 
 scalar_t__ USB_VID_DIBCOM ; 
 scalar_t__ USB_VID_LITEON ; 
 struct i2c_adapter* FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int,int*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct i2c_adapter*,int) ; 
 int /*<<< orphan*/  dvb_pll_attach ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mt2060_attach ; 
 int /*<<< orphan*/  stk3000p_dib3000p_config ; 
 int /*<<< orphan*/  stk3000p_mt2060_config ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

int FUNC6(struct dvb_usb_adapter *adap)
{
	struct dibusb_state *st = adap->priv;
	u8 a,b;
	u16 if1 = 1220;
	struct i2c_adapter *tun_i2c;

	// First IF calibration for Liteon Sticks
	if (FUNC4(adap->dev->udev->descriptor.idVendor) == USB_VID_LITEON &&
	    FUNC4(adap->dev->udev->descriptor.idProduct) == USB_PID_LITEON_DVB_T_WARM) {

		FUNC2(adap->dev,0x7E,&a);
		FUNC2(adap->dev,0x7F,&b);

		if (a == 0x00)
			if1 += b;
		else if (a == 0x80)
			if1 -= b;
		else
			FUNC5("LITE-ON DVB-T: Strange IF1 calibration :%2X %2X\n", a, b);

	} else if (FUNC4(adap->dev->udev->descriptor.idVendor) == USB_VID_DIBCOM &&
		   FUNC4(adap->dev->udev->descriptor.idProduct) == USB_PID_DIBCOM_MOD3001_WARM) {
		u8 desc;
		FUNC2(adap->dev, 7, &desc);
		if (desc == 2) {
			a = 127;
			do {
				FUNC2(adap->dev, a, &desc);
				a--;
			} while (a > 7 && (desc == 0xff || desc == 0x00));
			if (desc & 0x80)
				if1 -= (0xff - desc);
			else
				if1 += desc;
		}
	}

	tun_i2c = FUNC0(adap->fe_adap[0].fe, 1);
	if (FUNC3(mt2060_attach, adap->fe_adap[0].fe, tun_i2c, &stk3000p_mt2060_config, if1) == NULL) {
		/* not found - use panasonic pll parameters */
		if (FUNC3(dvb_pll_attach, adap->fe_adap[0].fe, 0x60, tun_i2c, DVB_PLL_ENV57H1XD5) == NULL)
			return -ENOMEM;
	} else {
		st->mt2060_present = 1;
		/* set the correct parameters for the dib3000p */
		FUNC1(adap->fe_adap[0].fe, &stk3000p_dib3000p_config);
	}
	return 0;
}