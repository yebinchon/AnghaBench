#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  field; } ;
struct rvin_dev {scalar_t__ state; int sequence; int /*<<< orphan*/  qlock; TYPE_2__** queue_buf; TYPE_1__ format; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {int sequence; TYPE_3__ vb2_buf; int /*<<< orphan*/  field; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ RUNNING ; 
 scalar_t__ STARTING ; 
 scalar_t__ STOPPED ; 
 scalar_t__ STOPPING ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int VNMS_FBS_MASK ; 
 int VNMS_FBS_SHIFT ; 
 int /*<<< orphan*/  VNMS_REG ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct rvin_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct rvin_dev*,int) ; 
 int FUNC4 (struct rvin_dev*) ; 
 int FUNC5 (struct rvin_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct rvin_dev*,char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC10(int irq, void *data)
{
	struct rvin_dev *vin = data;
	u32 int_status, vnms;
	int slot;
	unsigned int handled = 0;
	unsigned long flags;

	FUNC6(&vin->qlock, flags);

	int_status = FUNC4(vin);
	if (!int_status)
		goto done;

	FUNC2(vin);
	handled = 1;

	/* Nothing to do if capture status is 'STOPPED' */
	if (vin->state == STOPPED) {
		FUNC9(vin, "IRQ while state stopped\n");
		goto done;
	}

	/* Nothing to do if capture status is 'STOPPING' */
	if (vin->state == STOPPING) {
		FUNC9(vin, "IRQ while state stopping\n");
		goto done;
	}

	/* Prepare for capture and update state */
	vnms = FUNC5(vin, VNMS_REG);
	slot = (vnms & VNMS_FBS_MASK) >> VNMS_FBS_SHIFT;

	/*
	 * To hand buffers back in a known order to userspace start
	 * to capture first from slot 0.
	 */
	if (vin->state == STARTING) {
		if (slot != 0) {
			FUNC9(vin, "Starting sync slot: %d\n", slot);
			goto done;
		}

		FUNC9(vin, "Capture start synced!\n");
		vin->state = RUNNING;
	}

	/* Capture frame */
	if (vin->queue_buf[slot]) {
		vin->queue_buf[slot]->field = vin->format.field;
		vin->queue_buf[slot]->sequence = vin->sequence;
		vin->queue_buf[slot]->vb2_buf.timestamp = FUNC1();
		FUNC8(&vin->queue_buf[slot]->vb2_buf,
				VB2_BUF_STATE_DONE);
		vin->queue_buf[slot] = NULL;
	} else {
		/* Scratch buffer was used, dropping frame. */
		FUNC9(vin, "Dropping frame %u\n", vin->sequence);
	}

	vin->sequence++;

	/* Prepare for next frame */
	FUNC3(vin, slot);
done:
	FUNC7(&vin->qlock, flags);

	return FUNC0(handled);
}