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
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;
struct anysee_state {scalar_t__ has_ci; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_usb_device*) ; 
 int FUNC1 (struct dvb_usb_device*,int) ; 
 int FUNC2 (struct dvb_usb_device*,int,int) ; 
 struct anysee_state* FUNC3 (struct dvb_usb_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d)
{
	struct anysee_state *state = FUNC3(d);
	int ret;

	/* There is one interface with two alternate settings.
	   Alternate setting 0 is for bulk transfer.
	   Alternate setting 1 is for isochronous transfer.
	   We use bulk transfer (alternate setting 0). */
	ret = FUNC4(d->udev, 0, 0);
	if (ret)
		return ret;

	/* LED light */
	ret = FUNC2(d, 0x01, 0x03);
	if (ret)
		return ret;

	/* enable IR */
	ret = FUNC1(d, 1);
	if (ret)
		return ret;

	/* attach CI */
	if (state->has_ci) {
		ret = FUNC0(d);
		if (ret)
			return ret;
	}

	return 0;
}