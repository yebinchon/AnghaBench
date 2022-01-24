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
struct dvbsky_state {int /*<<< orphan*/  stream_mutex; } ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 struct dvbsky_state* FUNC0 (struct dvb_usb_device*) ; 
 int FUNC1 (struct dvb_usb_device*,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_usb_device *d, u8 onoff)
{
	struct dvbsky_state *state = FUNC0(d);
	int ret;
	u8 obuf_pre[3] = { 0x37, 0, 0 };
	u8 obuf_post[3] = { 0x36, 3, 0 };

	FUNC3(&state->stream_mutex);
	ret = FUNC1(d, obuf_pre, 3, NULL, 0);
	if (!ret && onoff) {
		FUNC2(20);
		ret = FUNC1(d, obuf_post, 3, NULL, 0);
	}
	FUNC4(&state->stream_mutex);
	return ret;
}