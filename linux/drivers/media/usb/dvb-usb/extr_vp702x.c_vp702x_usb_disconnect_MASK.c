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
struct vp702x_device_state {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/  buf; } ;
struct usb_interface {int dummy; } ;
struct dvb_usb_device {struct vp702x_device_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct dvb_usb_device* FUNC4 (struct usb_interface*) ; 

__attribute__((used)) static void FUNC5(struct usb_interface *intf)
{
	struct dvb_usb_device *d = FUNC4(intf);
	struct vp702x_device_state *st = d->priv;
	FUNC2(&st->buf_mutex);
	FUNC1(st->buf);
	FUNC3(&st->buf_mutex);
	FUNC0(intf);
}