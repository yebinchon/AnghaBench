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
struct TYPE_2__ {int num_bufs; int /*<<< orphan*/ * urb; } ;
struct stk1160 {int /*<<< orphan*/  v4l_lock; int /*<<< orphan*/  udev; scalar_t__ sequence; int /*<<< orphan*/  v4l2_dev; TYPE_1__ isoc_ctl; } ;

/* Variables and functions */
 int ENODEV ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ STK1160_DCTRL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  s_stream ; 
 int FUNC2 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC3 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 
 int FUNC6 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC7 (struct stk1160*) ; 
 int /*<<< orphan*/  FUNC8 (struct stk1160*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  video ; 

__attribute__((used)) static int FUNC12(struct stk1160 *dev)
{
	bool new_pkt_size;
	int rc = 0;
	int i;

	/* Check device presence */
	if (!dev->udev)
		return -ENODEV;

	if (FUNC0(&dev->v4l_lock))
		return -ERESTARTSYS;
	/*
	 * For some reason it is mandatory to set alternate *first*
	 * and only *then* initialize isoc urbs.
	 * Someone please explain me why ;)
	 */
	new_pkt_size = FUNC6(dev);

	/*
	 * We (re)allocate isoc urbs if:
	 * there is no allocated isoc urbs, OR
	 * a new dev->max_pkt_size is detected
	 */
	if (!dev->isoc_ctl.num_bufs || new_pkt_size) {
		rc = FUNC2(dev);
		if (rc < 0)
			goto out_stop_hw;
	}

	/* submit urbs and enables IRQ */
	for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
		rc = FUNC10(dev->isoc_ctl.urb[i], GFP_KERNEL);
		if (rc) {
			FUNC5("cannot submit urb[%d] (%d)\n", i, rc);
			goto out_uninit;
		}
	}

	/* Start saa711x */
	FUNC11(&dev->v4l2_dev, 0, video, s_stream, 1);

	dev->sequence = 0;

	/* Start stk1160 */
	FUNC8(dev, STK1160_DCTRL, 0xb3);
	FUNC8(dev, STK1160_DCTRL+3, 0x00);

	FUNC4("streaming started\n");

	FUNC1(&dev->v4l_lock);

	return 0;

out_uninit:
	FUNC7(dev);
out_stop_hw:
	FUNC9(dev->udev, 0, 0);
	FUNC3(dev);

	FUNC1(&dev->v4l_lock);

	return rc;
}