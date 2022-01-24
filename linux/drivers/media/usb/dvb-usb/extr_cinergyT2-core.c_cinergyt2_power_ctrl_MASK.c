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
struct dvb_usb_device {int /*<<< orphan*/  data_mutex; struct cinergyt2_state* priv; } ;
struct cinergyt2_state {int* data; } ;

/* Variables and functions */
 int CINERGYT2_EP1_SLEEP_MODE ; 
 int FUNC0 (struct dvb_usb_device*,int*,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_device *d, int enable)
{
	struct cinergyt2_state *st = d->priv;
	int ret;

	FUNC1(&d->data_mutex);
	st->data[0] = CINERGYT2_EP1_SLEEP_MODE;
	st->data[1] = enable ? 0 : 1;

	ret = FUNC0(d, st->data, 2, st->data, 3, 0);
	FUNC2(&d->data_mutex);

	return ret;
}