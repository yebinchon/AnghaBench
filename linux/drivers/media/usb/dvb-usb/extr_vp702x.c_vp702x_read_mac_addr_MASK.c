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
typedef  int u8 ;
struct vp702x_device_state {int* buf; int /*<<< orphan*/  buf_mutex; } ;
struct dvb_usb_device {struct vp702x_device_state* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  READ_EEPROM_REQ ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int,int*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d,u8 mac[6])
{
	u8 i, *buf;
	struct vp702x_device_state *st = d->priv;

	FUNC1(&st->buf_mutex);
	buf = st->buf;
	for (i = 6; i < 12; i++)
		FUNC3(d, READ_EEPROM_REQ, i, 1, &buf[i - 6], 1);

	FUNC0(mac, buf, 6);
	FUNC2(&st->buf_mutex);
	return 0;
}