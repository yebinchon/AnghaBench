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
typedef  int /*<<< orphan*/  u32 ;
struct mei_device {scalar_t__ dev_state; int recvd_hw_ready; scalar_t__ pg_event; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  dev; void* hbuf_is_ready; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  wait_hw_ready; } ;
struct list_head {int dummy; } ;
typedef  scalar_t__ s32 ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ MEI_DEV_POWER_DOWN ; 
 scalar_t__ MEI_DEV_RESETTING ; 
 scalar_t__ MEI_PG_EVENT_RECEIVED ; 
 scalar_t__ MEI_PG_EVENT_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct mei_device*) ; 
 void* FUNC7 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct mei_device*) ; 
 scalar_t__ FUNC11 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct mei_device*,struct list_head*) ; 
 int FUNC13 (struct mei_device*,struct list_head*,scalar_t__*) ; 
 int FUNC14 (struct mei_device*,struct list_head*) ; 
 scalar_t__ FUNC15 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC16 (struct mei_device*) ; 
 int /*<<< orphan*/  FUNC17 (struct mei_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

irqreturn_t FUNC22(int irq, void *dev_id)
{
	struct mei_device *dev = (struct mei_device *) dev_id;
	struct list_head cmpl_list;
	s32 slots;
	u32 hcsr;
	int rets = 0;

	FUNC1(dev->dev, "function called after ISR to handle the interrupt processing.\n");
	/* initialize our complete list */
	FUNC18(&dev->device_lock);

	hcsr = FUNC8(dev);
	FUNC4(dev, hcsr);

	FUNC0(&cmpl_list);

	/* check if ME wants a reset */
	if (!FUNC11(dev) && dev->dev_state != MEI_DEV_RESETTING) {
		FUNC3(dev->dev, "FW not ready: resetting.\n");
		FUNC20(&dev->reset_work);
		goto end;
	}

	if (FUNC15(dev))
		FUNC9(dev);

	FUNC17(dev, FUNC5(hcsr));

	/*  check if we need to start the dev */
	if (!FUNC10(dev)) {
		if (FUNC11(dev)) {
			FUNC1(dev->dev, "we need to start the dev.\n");
			dev->recvd_hw_ready = true;
			FUNC21(&dev->wait_hw_ready);
		} else {
			FUNC1(dev->dev, "Spurious Interrupt\n");
		}
		goto end;
	}
	/* check slots available for reading */
	slots = FUNC6(dev);
	while (slots > 0) {
		FUNC1(dev->dev, "slots to read = %08x\n", slots);
		rets = FUNC13(dev, &cmpl_list, &slots);
		/* There is a race between ME write and interrupt delivery:
		 * Not all data is always available immediately after the
		 * interrupt, so try to read again on the next interrupt.
		 */
		if (rets == -ENODATA)
			break;

		if (rets &&
		    (dev->dev_state != MEI_DEV_RESETTING &&
		     dev->dev_state != MEI_DEV_POWER_DOWN)) {
			FUNC2(dev->dev, "mei_irq_read_handler ret = %d.\n",
						rets);
			FUNC20(&dev->reset_work);
			goto end;
		}
	}

	dev->hbuf_is_ready = FUNC7(dev);

	/*
	 * During PG handshake only allowed write is the replay to the
	 * PG exit message, so block calling write function
	 * if the pg event is in PG handshake
	 */
	if (dev->pg_event != MEI_PG_EVENT_WAIT &&
	    dev->pg_event != MEI_PG_EVENT_RECEIVED) {
		rets = FUNC14(dev, &cmpl_list);
		dev->hbuf_is_ready = FUNC7(dev);
	}

	FUNC12(dev, &cmpl_list);

end:
	FUNC1(dev->dev, "interrupt thread end ret = %d\n", rets);
	FUNC16(dev);
	FUNC19(&dev->device_lock);
	return IRQ_HANDLED;
}