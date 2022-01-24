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
typedef  int u8 ;
typedef  int u16 ;
struct vp702x_device_state {int* buf; int /*<<< orphan*/  buf_mutex; } ;
struct vp702x_adapter_state {int pid_filter_state; } ;
struct dvb_usb_adapter {TYPE_1__* dev; struct vp702x_adapter_state* priv; } ;
typedef  int pid ;
struct TYPE_2__ {struct vp702x_device_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_adapter*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_adapter *adap, u16 pid, u8 id, int onoff)
{
	struct vp702x_adapter_state *st = adap->priv;
	struct vp702x_device_state *dst = adap->dev->priv;
	u8 *buf;

	if (onoff)
		st->pid_filter_state |=  (1 << id);
	else {
		st->pid_filter_state &= ~(1 << id);
		pid = 0xffff;
	}

	id = 0x10 + id*2;

	FUNC3(adap, st->pid_filter_state);

	FUNC1(&dst->buf_mutex);

	buf = dst->buf;
	FUNC0(buf, 0, 16);
	FUNC4(adap->dev, 0xe0, (((pid >> 8) & 0xff) << 8) | (id), 0, buf, 16);
	FUNC4(adap->dev, 0xe0, (((pid     ) & 0xff) << 8) | (id+1), 0, buf, 16);

	FUNC2(&dst->buf_mutex);

	return 0;
}