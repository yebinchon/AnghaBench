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
struct mei_device {scalar_t__ dev_state; scalar_t__ tx_queue_limit; int /*<<< orphan*/  device_lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct mei_cl_cb {int internal; int blocking; TYPE_1__ buf; } ;
struct mei_cl {scalar_t__ tx_cb_queued; scalar_t__ writing_state; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  me_cl; struct mei_device* dev; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EFBIG ; 
 int EINTR ; 
 int ENODEV ; 
 int ENOMEM ; 
 int ENOTTY ; 
 unsigned int MEI_CL_IO_TX_BLOCKING ; 
 unsigned int MEI_CL_IO_TX_INTERNAL ; 
 scalar_t__ MEI_DEV_ENABLED ; 
 int /*<<< orphan*/  MEI_FOP_WRITE ; 
 scalar_t__ MEI_WRITE_COMPLETE ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  current ; 
 struct mei_cl_cb* FUNC1 (struct mei_cl*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_cl*) ; 
 size_t FUNC3 (struct mei_cl*) ; 
 int FUNC4 (struct mei_cl*,struct mei_cl_cb*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 

ssize_t FUNC11(struct mei_cl *cl, u8 *buf, size_t length,
		      unsigned int mode)
{
	struct mei_device *bus;
	struct mei_cl_cb *cb;
	ssize_t rets;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	bus = cl->dev;

	FUNC7(&bus->device_lock);
	if (bus->dev_state != MEI_DEV_ENABLED) {
		rets = -ENODEV;
		goto out;
	}

	if (!FUNC2(cl)) {
		rets = -ENODEV;
		goto out;
	}

	/* Check if we have an ME client device */
	if (!FUNC5(cl->me_cl)) {
		rets = -ENOTTY;
		goto out;
	}

	if (length > FUNC3(cl)) {
		rets = -EFBIG;
		goto out;
	}

	while (cl->tx_cb_queued >= bus->tx_queue_limit) {
		FUNC8(&bus->device_lock);
		rets = FUNC10(cl->tx_wait,
				cl->writing_state == MEI_WRITE_COMPLETE ||
				(!FUNC2(cl)));
		FUNC7(&bus->device_lock);
		if (rets) {
			if (FUNC9(current))
				rets = -EINTR;
			goto out;
		}
		if (!FUNC2(cl)) {
			rets = -ENODEV;
			goto out;
		}
	}

	cb = FUNC1(cl, length, MEI_FOP_WRITE, NULL);
	if (!cb) {
		rets = -ENOMEM;
		goto out;
	}

	cb->internal = !!(mode & MEI_CL_IO_TX_INTERNAL);
	cb->blocking = !!(mode & MEI_CL_IO_TX_BLOCKING);
	FUNC6(cb->buf.data, buf, length);

	rets = FUNC4(cl, cb);

out:
	FUNC8(&bus->device_lock);

	return rets;
}