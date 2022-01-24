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
struct usb_device {int dummy; } ;
struct gspca_dev {int /*<<< orphan*/  iface; struct usb_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_STREAM ; 
 int /*<<< orphan*/  FUNC0 (struct gspca_dev*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gspca_dev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gspca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct gspca_dev *gspca_dev)
{
	struct usb_device *dev = gspca_dev->dev;

	FUNC4(gspca_dev, 0x02000000);
	FUNC4(gspca_dev, 0x02000000);
	FUNC6(dev, gspca_dev->iface, 1);
	FUNC2(gspca_dev, 0x0630);
	FUNC1(gspca_dev, 0x000020);	/* << (value ff ff ff ff) */
	FUNC2(gspca_dev, 0x0650);
	FUNC5(gspca_dev, 0x000020, 0xffffffff);
	FUNC3(gspca_dev, 0x0620, 0);
	FUNC3(gspca_dev, 0x0630, 0);
	FUNC3(gspca_dev, 0x0640, 0);
	FUNC3(gspca_dev, 0x0650, 0);
	FUNC3(gspca_dev, 0x0660, 0);
	FUNC0(gspca_dev, D_STREAM, "camera stopped\n");
}