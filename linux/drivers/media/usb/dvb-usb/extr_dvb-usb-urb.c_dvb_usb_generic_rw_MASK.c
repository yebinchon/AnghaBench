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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_2__ {scalar_t__ generic_bulk_ctrl_endpoint; scalar_t__ generic_bulk_ctrl_endpoint_response; } ;
struct dvb_usb_device {int /*<<< orphan*/  usb_mutex; TYPE_1__ props; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  (*) (char*)) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

int FUNC9(struct dvb_usb_device *d, u8 *wbuf, u16 wlen, u8 *rbuf,
	u16 rlen, int delay_ms)
{
	int actlen,ret = -ENOMEM;

	if (!d || wbuf == NULL || wlen == 0)
		return -EINVAL;

	if (d->props.generic_bulk_ctrl_endpoint == 0) {
		FUNC2("endpoint for generic control not specified.");
		return -EINVAL;
	}

	if ((ret = FUNC4(&d->usb_mutex)))
		return ret;

	FUNC0(">>> ");
	FUNC1(wbuf,wlen,deb_xfer);

	ret = FUNC6(d->udev,FUNC8(d->udev,
			d->props.generic_bulk_ctrl_endpoint), wbuf,wlen,&actlen,
			2000);

	if (ret)
		FUNC2("bulk message failed: %d (%d/%d)",ret,wlen,actlen);
	else
		ret = actlen != wlen ? -1 : 0;

	/* an answer is expected, and no error before */
	if (!ret && rbuf && rlen) {
		if (delay_ms)
			FUNC3(delay_ms);

		ret = FUNC6(d->udev,FUNC7(d->udev,
				d->props.generic_bulk_ctrl_endpoint_response ?
				d->props.generic_bulk_ctrl_endpoint_response :
				d->props.generic_bulk_ctrl_endpoint),rbuf,rlen,&actlen,
				2000);

		if (ret)
			FUNC2("recv bulk message failed: %d",ret);
		else {
			FUNC0("<<< ");
			FUNC1(rbuf,actlen,deb_xfer);
		}
	}

	FUNC5(&d->usb_mutex);
	return ret;
}