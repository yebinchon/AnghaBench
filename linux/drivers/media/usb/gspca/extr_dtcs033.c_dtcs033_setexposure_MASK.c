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
typedef  int u16 ;
struct gspca_dev {scalar_t__ usb_err; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int USB_DIR_OUT ; 
 int USB_RECIP_DEVICE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int const,int const,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gspca_dev *gspca_dev,
			s32 expo, s32 gain)
{
	/* gain [dB] encoding */
	u16 sGain   = (u16)gain;
	u16 gainVal = 224+(sGain-14)*(768-224)/(33-14);
	u16 wIndex =  0x0100|(0x00FF&gainVal);
	u16 wValue = (0xFF00&gainVal)>>8;

	/* exposure time [msec] encoding */
	u16 sXTime   = (u16)expo;
	u16 xtimeVal = (524*(150-(sXTime-1)))/150;

	const u8 bRequestType =
		USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE;
	const u8 bRequest = 0x18;

	FUNC1(gspca_dev,
		bRequestType, bRequest, wValue, wIndex, 0);
	if (gspca_dev->usb_err < 0)
		FUNC0(gspca_dev, "usb error in setexposure(gain) sequence\n");

	FUNC1(gspca_dev,
		bRequestType, bRequest, (xtimeVal<<4), 0x6300, 0);
	if (gspca_dev->usb_err < 0)
		FUNC0(gspca_dev, "usb error in setexposure(time) sequence\n");
}