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
struct gspca_dev {int* usb_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_USBI ; 
 int EIO ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int /*<<< orphan*/  USB_REQ_GET_STATUS ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct gspca_dev *gspca_dev)
{
	int rc;

	rc = FUNC2(gspca_dev->dev,
			FUNC3(gspca_dev->dev, 0),
			USB_REQ_GET_STATUS,
			USB_DIR_IN | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
			1, 0, gspca_dev->usb_buf, 1, 500);
	if (rc != 1) {
		FUNC1("read1 error %d\n", rc);
		return (rc < 0) ? rc : -EIO;
	}
	FUNC0(gspca_dev, D_USBI, "read1 response %02x\n",
		  gspca_dev->usb_buf[0]);
	return gspca_dev->usb_buf[0];
}