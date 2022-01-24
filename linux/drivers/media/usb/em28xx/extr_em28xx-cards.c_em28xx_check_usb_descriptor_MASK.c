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
struct usb_interface {int /*<<< orphan*/  dev; TYPE_2__* altsetting; } ;
struct usb_endpoint_descriptor {int bEndpointAddress; int /*<<< orphan*/  wMaxPacketSize; } ;
struct usb_device {scalar_t__ speed; } ;
struct em28xx {int analog_ep_isoc; int* alt_max_pkt_size_isoc; int analog_ep_bulk; int dvb_max_pkt_size_isoc; int dvb_ep_isoc; int dvb_alt_isoc; int dvb_ep_bulk; int dvb_max_pkt_size_isoc_ts2; int dvb_ep_isoc_ts2; int dvb_ep_bulk_ts2; } ;
struct TYPE_4__ {TYPE_1__* endpoint; } ;
struct TYPE_3__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 scalar_t__ USB_SPEED_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_endpoint_descriptor const*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_endpoint_descriptor const*) ; 

__attribute__((used)) static void FUNC6(struct em28xx *dev,
					struct usb_device *udev,
					struct usb_interface *intf,
					int alt, int ep,
					bool *has_vendor_audio,
					bool *has_video,
					bool *has_dvb)
{
	const struct usb_endpoint_descriptor *e;
	int sizedescr, size;

	/*
	 * NOTE:
	 *
	 * Old logic with support for isoc transfers only was:
	 *  0x82	isoc		=> analog
	 *  0x83	isoc		=> audio
	 *  0x84	isoc		=> digital
	 *
	 * New logic with support for bulk transfers
	 *  0x82	isoc		=> analog
	 *  0x82	bulk		=> analog
	 *  0x83	isoc*		=> audio
	 *  0x84	isoc		=> digital
	 *  0x84	bulk		=> analog or digital**
	 *  0x85	isoc		=> digital TS2
	 *  0x85	bulk		=> digital TS2
	 * (*: audio should always be isoc)
	 * (**: analog, if ep 0x82 is isoc, otherwise digital)
	 *
	 * The new logic preserves backwards compatibility and
	 * reflects the endpoint configurations we have seen
	 * so far. But there might be devices for which this
	 * logic is not sufficient...
	 */

	e = &intf->altsetting[alt].endpoint[ep].desc;

	if (!FUNC3(e))
		return;

	sizedescr = FUNC2(e->wMaxPacketSize);
	size = sizedescr & 0x7ff;

	if (udev->speed == USB_SPEED_HIGH)
		size = size * FUNC1(sizedescr);

	/* Only inspect input endpoints */

	switch (e->bEndpointAddress) {
	case 0x82:
		*has_video = true;
		if (FUNC5(e)) {
			dev->analog_ep_isoc = e->bEndpointAddress;
			dev->alt_max_pkt_size_isoc[alt] = size;
		} else if (FUNC4(e)) {
			dev->analog_ep_bulk = e->bEndpointAddress;
		}
		return;
	case 0x83:
		if (FUNC5(e))
			*has_vendor_audio = true;
		else
			FUNC0(&intf->dev,
				"error: skipping audio endpoint 0x83, because it uses bulk transfers !\n");
		return;
	case 0x84:
		if (*has_video && (FUNC4(e))) {
			dev->analog_ep_bulk = e->bEndpointAddress;
		} else {
			if (FUNC5(e)) {
				if (size > dev->dvb_max_pkt_size_isoc) {
					/*
					 * 2) some manufacturers (e.g. Terratec)
					 * disable endpoints by setting
					 * wMaxPacketSize to 0 bytes for all
					 * alt settings. So far, we've seen
					 * this for DVB isoc endpoints only.
					 */
					*has_dvb = true;
					dev->dvb_ep_isoc = e->bEndpointAddress;
					dev->dvb_max_pkt_size_isoc = size;
					dev->dvb_alt_isoc = alt;
				}
			} else {
				*has_dvb = true;
				dev->dvb_ep_bulk = e->bEndpointAddress;
			}
		}
		return;
	case 0x85:
		if (FUNC5(e)) {
			if (size > dev->dvb_max_pkt_size_isoc_ts2) {
				dev->dvb_ep_isoc_ts2 = e->bEndpointAddress;
				dev->dvb_max_pkt_size_isoc_ts2 = size;
				dev->dvb_alt_isoc = alt;
			}
		} else {
			dev->dvb_ep_bulk_ts2 = e->bEndpointAddress;
		}
		return;
	}
}