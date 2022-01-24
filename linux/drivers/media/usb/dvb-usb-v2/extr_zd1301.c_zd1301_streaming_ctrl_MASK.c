#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct dvb_usb_device {struct usb_interface* intf; } ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct dvb_usb_device* FUNC1 (struct dvb_frontend*) ; 
 int FUNC2 (struct dvb_usb_device*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_frontend *fe, int onoff)
{
	struct dvb_usb_device *d = FUNC1(fe);
	struct usb_interface *intf = d->intf;
	int ret;
	u8 buf[3] = {0x03, 0x00, onoff ? 0x07 : 0x08};

	FUNC0(&intf->dev, "onoff=%d\n", onoff);

	ret = FUNC2(d, buf, 3, NULL, 0);
	if (ret)
		goto err;

	return 0;
err:
	FUNC0(&intf->dev, "failed=%d\n", ret);
	return ret;
}