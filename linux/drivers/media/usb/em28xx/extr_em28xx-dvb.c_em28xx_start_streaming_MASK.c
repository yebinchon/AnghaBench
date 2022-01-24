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
struct usb_device {int dummy; } ;
struct em28xx_i2c_bus {struct em28xx* dev; } ;
struct TYPE_3__ {struct em28xx_i2c_bus* priv; } ;
struct em28xx_dvb {TYPE_1__ adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  has_dual_ts; } ;
struct em28xx {int dvb_max_pkt_size_isoc; int dvb_alt_isoc; scalar_t__ dvb_xfer_bulk; int /*<<< orphan*/  ifnum; TYPE_2__ board; int /*<<< orphan*/  dvb_ep_isoc; int /*<<< orphan*/  dvb_ep_bulk; int /*<<< orphan*/  intf; } ;

/* Variables and functions */
 int /*<<< orphan*/  EM28XX_DIGITAL_MODE ; 
 int EM28XX_DVB_BULK_PACKET_MULTIPLIER ; 
 int /*<<< orphan*/  EM28XX_DVB_NUM_BUFS ; 
 int EM28XX_DVB_NUM_ISOC_PACKETS ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  em28xx_dvb_urb_data_copy ; 
 int FUNC1 (struct em28xx*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct em28xx*,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct em28xx_dvb *dvb)
{
	int rc;
	struct em28xx_i2c_bus *i2c_bus = dvb->adapter.priv;
	struct em28xx *dev = i2c_bus->dev;
	struct usb_device *udev = FUNC3(dev->intf);
	int dvb_max_packet_size, packet_multiplier, dvb_alt;

	if (dev->dvb_xfer_bulk) {
		if (!dev->dvb_ep_bulk)
			return -ENODEV;
		dvb_max_packet_size = 512; /* USB 2.0 spec */
		packet_multiplier = EM28XX_DVB_BULK_PACKET_MULTIPLIER;
		dvb_alt = 0;
	} else { /* isoc */
		if (!dev->dvb_ep_isoc)
			return -ENODEV;
		dvb_max_packet_size = dev->dvb_max_pkt_size_isoc;
		if (dvb_max_packet_size < 0)
			return dvb_max_packet_size;
		packet_multiplier = EM28XX_DVB_NUM_ISOC_PACKETS;
		dvb_alt = dev->dvb_alt_isoc;
	}

	if (!dev->board.has_dual_ts)
		FUNC4(udev, dev->ifnum, dvb_alt);

	rc = FUNC2(dev, EM28XX_DIGITAL_MODE);
	if (rc < 0)
		return rc;

	FUNC0(1, "Using %d buffers each with %d x %d bytes, alternate %d\n",
		EM28XX_DVB_NUM_BUFS,
		packet_multiplier,
		dvb_max_packet_size, dvb_alt);

	return FUNC1(dev, EM28XX_DIGITAL_MODE,
				    dev->dvb_xfer_bulk,
				    EM28XX_DVB_NUM_BUFS,
				    dvb_max_packet_size,
				    packet_multiplier,
				    em28xx_dvb_urb_data_copy);
}