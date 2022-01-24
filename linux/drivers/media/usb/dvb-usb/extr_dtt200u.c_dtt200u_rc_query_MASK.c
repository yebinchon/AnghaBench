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
typedef  int u32 ;
struct dvb_usb_device {int /*<<< orphan*/  data_mutex; int /*<<< orphan*/  rc_dev; struct dtt200u_state* priv; } ;
struct dtt200u_state {int* data; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int GET_RC_CODE ; 
 int RC_PROTO_NEC ; 
 int RC_PROTO_NECX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int*) ; 
 int FUNC1 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dvb_usb_device *d)
{
	struct dtt200u_state *st = d->priv;
	u32 scancode;
	int ret;

	FUNC2(&d->data_mutex);
	st->data[0] = GET_RC_CODE;

	ret = FUNC1(d, st->data, 1, st->data, 5, 0);
	if (ret < 0)
		goto ret;

	if (st->data[0] == 1) {
		enum rc_proto proto = RC_PROTO_NEC;

		scancode = st->data[1];
		if ((u8) ~st->data[1] != st->data[2]) {
			/* Extended NEC */
			scancode = scancode << 8;
			scancode |= st->data[2];
			proto = RC_PROTO_NECX;
		}
		scancode = scancode << 8;
		scancode |= st->data[3];

		/* Check command checksum is ok */
		if ((u8) ~st->data[3] == st->data[4])
			FUNC4(d->rc_dev, proto, scancode, 0);
		else
			FUNC5(d->rc_dev);
	} else if (st->data[0] == 2) {
		FUNC6(d->rc_dev);
	} else {
		FUNC5(d->rc_dev);
	}

	if (st->data[0] != 0)
		FUNC0("st->data: %*ph\n", 5, st->data);

ret:
	FUNC3(&d->data_mutex);
	return ret;
}