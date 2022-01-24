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
typedef  scalar_t__ u32 ;
struct dvb_usb_device {scalar_t__ last_event; int /*<<< orphan*/  data_mutex; struct cinergyt2_state* priv; } ;
struct cinergyt2_state {int* data; scalar_t__ rc_counter; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int CINERGYT2_EP1_GET_RC_EVENTS ; 
 scalar_t__ RC_REPEAT_DELAY ; 
 int REMOTE_KEY_REPEAT ; 
 int REMOTE_NO_KEY_PRESSED ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*,int*,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__* repeatable_keys ; 

__attribute__((used)) static int FUNC6(struct dvb_usb_device *d, u32 *event, int *state)
{
	struct cinergyt2_state *st = d->priv;
	int i, ret;

	*state = REMOTE_NO_KEY_PRESSED;

	FUNC4(&d->data_mutex);
	st->data[0] = CINERGYT2_EP1_GET_RC_EVENTS;

	ret = FUNC2(d, st->data, 1, st->data, 5, 0);
	if (ret < 0)
		goto ret;

	if (st->data[4] == 0xff) {
		/* key repeat */
		st->rc_counter++;
		if (st->rc_counter > RC_REPEAT_DELAY) {
			for (i = 0; i < FUNC0(repeatable_keys); i++) {
				if (d->last_event == repeatable_keys[i]) {
					*state = REMOTE_KEY_REPEAT;
					*event = d->last_event;
					FUNC1("repeat key, event %x\n",
						   *event);
					goto ret;
				}
			}
			FUNC1("repeated key (non repeatable)\n");
		}
		goto ret;
	}

	/* hack to pass checksum on the custom field */
	st->data[2] = ~st->data[1];
	FUNC3(d, st->data, event, state);
	if (st->data[0] != 0) {
		if (*event != d->last_event)
			st->rc_counter = 0;

		FUNC1("key: %*ph\n", 5, st->data);
	}

ret:
	FUNC5(&d->data_mutex);
	return ret;
}