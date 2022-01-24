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
typedef  int u8 ;
struct dvb_usb_device {TYPE_1__* intf; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_EPA_FIFO_CFG ; 
 int /*<<< orphan*/  USB_EPA_MAXPKT ; 
 int /*<<< orphan*/  USB_SYSCTL_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d)
{
	int ret;
	u8 val;

	FUNC0(&d->intf->dev, "\n");

	/* init USB endpoints */
	ret = FUNC1(d, USB_SYSCTL_0, &val);
	if (ret)
		goto err;

	/* enable DMA and Full Packet Mode*/
	val |= 0x09;
	ret = FUNC2(d, USB_SYSCTL_0, val);
	if (ret)
		goto err;

	/* set EPA maximum packet size to 0x0200 */
	ret = FUNC3(d, USB_EPA_MAXPKT, "\x00\x02\x00\x00", 4);
	if (ret)
		goto err;

	/* change EPA FIFO length */
	ret = FUNC3(d, USB_EPA_FIFO_CFG, "\x14\x00\x00\x00", 4);
	if (ret)
		goto err;

	return ret;
err:
	FUNC0(&d->intf->dev, "failed=%d\n", ret);
	return ret;
}