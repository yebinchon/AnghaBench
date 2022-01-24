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
struct file {int dummy; } ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXUSB_OPEN_ANALOG ; 
 int /*<<< orphan*/  OPS ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (struct file*) ; 
 struct dvb_usb_device* FUNC4 (struct file*) ; 

__attribute__((used)) static int FUNC5(struct file *f)
{
	struct dvb_usb_device *dvbdev = FUNC4(f);
	int ret;

	/*
	 * no locking needed since this call only modifies analog
	 * state if there are no other analog handles currenly
	 * opened so ops done via them cannot create a conflict
	 */
	ret = FUNC0(dvbdev, CXUSB_OPEN_ANALOG);
	if (ret != 0)
		return ret;

	ret = FUNC3(f);
	if (ret != 0)
		goto ret_release;

	FUNC2(dvbdev, OPS, "got open\n");

	return 0;

ret_release:
	FUNC1(dvbdev);

	return ret;
}