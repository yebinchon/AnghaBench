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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {void* usb_buf; struct usb_device* dev; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

int FUNC7(struct gspca_dev *gspca_dev,
		unsigned char pref, u32 req, u16 val, u16 index,
		s32 len, void *pdata)
{
	struct usb_device *udev = gspca_dev->dev;
	s32 r = 0;

	if (pref == 0x40) { /* Send */
		if (len > 0) {
			FUNC1(gspca_dev->usb_buf, pdata, len);
			r = FUNC4(udev, FUNC6(udev, 0),
					req, pref, val, index,
					gspca_dev->usb_buf,
					len, 400 + 200 * (len > 1));
		} else {
			r = FUNC4(udev, FUNC6(udev, 0),
					req, pref, val, index, NULL, len, 400);
		}
	} else { /* Receive */
		if (len > 0) {
			r = FUNC4(udev, FUNC5(udev, 0),
					req, pref, val, index,
					gspca_dev->usb_buf,
					len, 400 + 200 * (len > 1));
			FUNC1(pdata, gspca_dev->usb_buf, len);
		} else {
			r = FUNC4(udev, FUNC5(udev, 0),
					req, pref, val, index, NULL, len, 400);
		}
	}

	if (r < 0)
		FUNC3("ctrl transfer failed %4d [p%02x r%d v%04x i%04x len%d]\n",
		       r, pref, req, val, index, len);
	else if (len > 1 && r < len)
		FUNC0(gspca_dev, "short ctrl transfer %d/%d\n", r, len);

	FUNC2(1);

	return r;
}