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
struct vp702x_device_state {int* buf; int /*<<< orphan*/  buf_mutex; } ;
struct dvb_usb_adapter {TYPE_1__* dev; } ;
struct TYPE_2__ {struct vp702x_device_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_adapter *adap, u8 bypass)
{
	int ret;
	struct vp702x_device_state *st = adap->dev->priv;
	u8 *buf;

	FUNC1(&st->buf_mutex);

	buf = st->buf;
	FUNC0(buf, 0, 16);

	ret = FUNC3(adap->dev, 0xe0, (bypass << 8) | 0x0e,
			0, buf, 16);
	FUNC2(&st->buf_mutex);
	return ret;
}