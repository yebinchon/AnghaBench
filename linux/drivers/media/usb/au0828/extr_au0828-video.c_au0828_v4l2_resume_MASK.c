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
struct au0828_dev {scalar_t__ stream_state; TYPE_1__ isoc_ctl; int /*<<< orphan*/  vbi_timeout; scalar_t__ vbi_timeout_running; int /*<<< orphan*/  vid_timeout; scalar_t__ vid_timeout_running; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 scalar_t__ STREAM_ON ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct au0828_dev*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC10(struct au0828_dev *dev)
{
	int i, rc;

	FUNC8("restarting V4L2\n");

	if (dev->stream_state == STREAM_ON) {
		FUNC5(dev);
		FUNC3(dev);
	}

	if (dev->vid_timeout_running)
		FUNC7(&dev->vid_timeout, jiffies + (HZ / 10));
	if (dev->vbi_timeout_running)
		FUNC7(&dev->vbi_timeout, jiffies + (HZ / 10));

	/* If we were doing ac97 instead of i2s, it would go here...*/
	FUNC2(dev);

	FUNC0(dev);

	if (!(dev->stream_state == STREAM_ON)) {
		FUNC1(dev);
		/* submit urbs */
		for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
			rc = FUNC9(dev->isoc_ctl.urb[i], GFP_ATOMIC);
			if (rc) {
				FUNC4("submit of urb %i failed (error=%i)\n",
					       i, rc);
				FUNC6(dev);
			}
		}
	}
}