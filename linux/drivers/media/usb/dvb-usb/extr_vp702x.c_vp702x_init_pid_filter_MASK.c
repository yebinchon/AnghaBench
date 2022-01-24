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
struct vp702x_device_state {int /*<<< orphan*/  buf_mutex; int /*<<< orphan*/ * buf; } ;
struct vp702x_adapter_state {int pid_filter_count; int pid_filter_can_bypass; int pid_filter_state; } ;
struct dvb_usb_adapter {TYPE_1__* dev; struct vp702x_adapter_state* priv; } ;
struct TYPE_2__ {struct vp702x_device_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_adapter*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_usb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_adapter *adap)
{
	struct vp702x_adapter_state *st = adap->priv;
	struct vp702x_device_state *dst = adap->dev->priv;
	int i;
	u8 *b;

	st->pid_filter_count = 8;
	st->pid_filter_can_bypass = 1;
	st->pid_filter_state = 0x00;

	FUNC4(adap, 1); /* bypass */

	for (i = 0; i < st->pid_filter_count; i++)
		FUNC3(adap, 0xffff, i, 1);

	FUNC1(&dst->buf_mutex);
	b = dst->buf;
	FUNC0(b, 0, 10);
	FUNC5(adap->dev, 0xb5, 3, 0, b, 10);
	FUNC5(adap->dev, 0xb5, 0, 0, b, 10);
	FUNC5(adap->dev, 0xb5, 1, 0, b, 10);
	FUNC2(&dst->buf_mutex);
	/*vp702x_set_pld_mode(d, 0); // filter */

	return 0;
}