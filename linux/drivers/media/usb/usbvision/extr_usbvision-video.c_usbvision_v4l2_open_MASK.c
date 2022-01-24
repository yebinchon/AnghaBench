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
struct usb_usbvision {int initialized; int /*<<< orphan*/  v4l2_lock; scalar_t__ user; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_IO ; 
 int EBUSY ; 
 int ERESTARTSYS ; 
 scalar_t__ ISOC_MODE_COMPRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ isoc_mode ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_usbvision*) ; 
 int FUNC4 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_usbvision*) ; 
 int FUNC7 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_usbvision*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct usb_usbvision*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_usbvision*) ; 
 int FUNC11 (struct usb_usbvision*,scalar_t__) ; 
 int FUNC12 (struct file*) ; 
 struct usb_usbvision* FUNC13 (struct file*) ; 

__attribute__((used)) static int FUNC14(struct file *file)
{
	struct usb_usbvision *usbvision = FUNC13(file);
	int err_code = 0;

	FUNC0(DBG_IO, "open");

	if (FUNC1(&usbvision->v4l2_lock))
		return -ERESTARTSYS;

	if (usbvision->user) {
		err_code = -EBUSY;
	} else {
		err_code = FUNC12(file);
		if (err_code)
			goto unlock;

		/* Allocate memory for the scratch ring buffer */
		err_code = FUNC9(usbvision);
		if (isoc_mode == ISOC_MODE_COMPRESS) {
			/* Allocate intermediate decompression buffers
			   only if needed */
			err_code = FUNC4(usbvision);
		}
		if (err_code) {
			/* Deallocate all buffers if trouble */
			FUNC10(usbvision);
			FUNC5(usbvision);
		}
	}

	/* If so far no errors then we shall start the camera */
	if (!err_code) {
		/* Send init sequence only once, it's large! */
		if (!usbvision->initialized) {
			int setup_ok = 0;
			setup_ok = FUNC11(usbvision, isoc_mode);
			if (setup_ok)
				usbvision->initialized = 1;
			else
				err_code = -EBUSY;
		}

		if (!err_code) {
			FUNC3(usbvision);
			err_code = FUNC7(usbvision);
			/* device must be initialized before isoc transfer */
			FUNC8(usbvision, 0);

			/* prepare queues */
			FUNC6(usbvision);
			usbvision->user++;
		}
	}

unlock:
	FUNC2(&usbvision->v4l2_lock);

	FUNC0(DBG_IO, "success");
	return err_code;
}