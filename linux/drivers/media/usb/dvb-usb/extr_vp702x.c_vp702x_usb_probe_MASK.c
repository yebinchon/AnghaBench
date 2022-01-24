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
struct vp702x_device_state {int buf_len; int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  buf; } ;
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct dvb_usb_device {struct vp702x_device_state* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int FUNC1 (struct usb_interface*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct dvb_usb_device**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vp702x_properties ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf,
		const struct usb_device_id *id)
{
	struct dvb_usb_device *d;
	struct vp702x_device_state *st;
	int ret;

	ret = FUNC1(intf, &vp702x_properties,
				   THIS_MODULE, &d, adapter_nr);
	if (ret)
		goto out;

	st = d->priv;
	st->buf_len = 16;
	st->buf = FUNC2(st->buf_len, GFP_KERNEL);
	if (!st->buf) {
		ret = -ENOMEM;
		FUNC0(intf);
		goto out;
	}
	FUNC3(&st->buf_mutex);

out:
	return ret;

}