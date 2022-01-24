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
struct ttusb2_state {int id; } ;
struct dvb_usb_device {struct ttusb2_state* priv; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, u8 cmd,
		u8 *wbuf, int wlen, u8 *rbuf, int rlen)
{
	struct ttusb2_state *st = d->priv;
	u8 *s, *r = NULL;
	int ret = 0;

	if (4 + rlen > 64)
		return -EIO;

	s = FUNC2(wlen+4, GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	r = FUNC2(64, GFP_KERNEL);
	if (!r) {
		FUNC1(s);
		return -ENOMEM;
	}

	s[0] = 0xaa;
	s[1] = ++st->id;
	s[2] = cmd;
	s[3] = wlen;
	FUNC3(&s[4],wbuf,wlen);

	ret = FUNC0(d, s, wlen+4, r, 64, 0);

	if (ret  != 0 ||
		r[0] != 0x55 ||
		r[1] != s[1] ||
		r[2] != cmd ||
		(rlen > 0 && r[3] != rlen)) {
		FUNC4("there might have been an error during control message transfer. (rlen = %d, was %d)",rlen,r[3]);
		FUNC1(s);
		FUNC1(r);
		return -EIO;
	}

	if (rlen > 0)
		FUNC3(rbuf, &r[4], rlen);

	FUNC1(s);
	FUNC1(r);

	return 0;
}