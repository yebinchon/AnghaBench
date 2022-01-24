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
typedef  int uint32_t ;
struct usbnet {int /*<<< orphan*/  net; } ;
struct usb_cdc_speed_change {int /*<<< orphan*/  ULBitRate; int /*<<< orphan*/  DLBitRRate; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  FUNC1 (struct usbnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 

__attribute__((used)) static void
FUNC2(struct usbnet *dev,
		     struct usb_cdc_speed_change *data)
{
	uint32_t rx_speed = FUNC0(data->DLBitRRate);
	uint32_t tx_speed = FUNC0(data->ULBitRate);

	/*
	 * Currently the USB-NET API does not support reporting the actual
	 * device speed. Do print it instead.
	 */
	if ((tx_speed > 1000000) && (rx_speed > 1000000)) {
		FUNC1(dev, link, dev->net,
			   "%u mbit/s downlink %u mbit/s uplink\n",
			   (unsigned int)(rx_speed / 1000000U),
			   (unsigned int)(tx_speed / 1000000U));
	} else {
		FUNC1(dev, link, dev->net,
			   "%u kbit/s downlink %u kbit/s uplink\n",
			   (unsigned int)(rx_speed / 1000U),
			   (unsigned int)(tx_speed / 1000U));
	}
}