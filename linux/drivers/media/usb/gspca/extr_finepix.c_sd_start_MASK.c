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
struct usb_fpix {int /*<<< orphan*/  work_struct; } ;
struct gspca_dev {TYPE_1__** urb; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  pipe; int /*<<< orphan*/  transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPIX_MAX_TRANSFER ; 
 int /*<<< orphan*/  FPIX_TIMEOUT ; 
 int FUNC0 (struct gspca_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gspca_dev *gspca_dev)
{
	struct usb_fpix *dev = (struct usb_fpix *) gspca_dev;
	int ret, len;

	/* Init the device */
	ret = FUNC0(gspca_dev, 0);
	if (ret < 0) {
		FUNC1("init failed %d\n", ret);
		return ret;
	}

	/* Read the result of the command. Ignore the result, for it
	 * varies with the device. */
	ret = FUNC3(gspca_dev->dev,
			gspca_dev->urb[0]->pipe,
			gspca_dev->urb[0]->transfer_buffer,
			FPIX_MAX_TRANSFER, &len,
			FPIX_TIMEOUT);
	if (ret < 0) {
		FUNC1("usb_bulk_msg failed %d\n", ret);
		return ret;
	}

	/* Request a frame, but don't read it */
	ret = FUNC0(gspca_dev, 1);
	if (ret < 0) {
		FUNC1("frame request failed %d\n", ret);
		return ret;
	}

	/* Again, reset bulk in endpoint */
	FUNC4(gspca_dev->dev, gspca_dev->urb[0]->pipe);

	FUNC2(&dev->work_struct);

	return 0;
}