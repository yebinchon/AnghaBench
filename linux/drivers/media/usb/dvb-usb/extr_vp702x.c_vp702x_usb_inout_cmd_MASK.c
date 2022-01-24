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
struct vp702x_device_state {int buf_len; int* buf; int /*<<< orphan*/  buf_mutex; } ;
struct dvb_usb_device {struct vp702x_device_state* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct dvb_usb_device*,int*,int,int*,int,int) ; 

__attribute__((used)) static int FUNC8(struct dvb_usb_device *d, u8 cmd, u8 *o,
				int olen, u8 *i, int ilen, int msec)
{
	struct vp702x_device_state *st = d->priv;
	int ret = 0;
	u8 *buf;
	int buflen = FUNC3(olen + 2, ilen + 1);

	ret = FUNC5(&st->buf_mutex);
	if (ret < 0)
		return ret;

	if (buflen > st->buf_len) {
		buf = FUNC2(buflen, GFP_KERNEL);
		if (!buf) {
			FUNC6(&st->buf_mutex);
			return -ENOMEM;
		}
		FUNC0("successfully reallocated a bigger buffer");
		FUNC1(st->buf);
		st->buf = buf;
		st->buf_len = buflen;
	} else {
		buf = st->buf;
	}

	buf[0] = 0x00;
	buf[1] = cmd;
	FUNC4(&buf[2], o, olen);

	ret = FUNC7(d, buf, olen+2, buf, ilen+1, msec);

	if (ret == 0)
		FUNC4(i, &buf[1], ilen);
	FUNC6(&st->buf_mutex);

	return ret;
}