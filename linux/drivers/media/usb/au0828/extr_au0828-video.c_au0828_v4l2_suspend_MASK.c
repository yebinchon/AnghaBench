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
struct urb {int dummy; } ;
struct TYPE_2__ {int num_bufs; struct urb** urb; } ;
struct au0828_dev {scalar_t__ stream_state; int /*<<< orphan*/  vbi_timeout; scalar_t__ vbi_timeout_running; int /*<<< orphan*/  vid_timeout; scalar_t__ vid_timeout_running; TYPE_1__ isoc_ctl; } ;

/* Variables and functions */
 scalar_t__ STREAM_ON ; 
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (struct urb*) ; 

void FUNC6(struct au0828_dev *dev)
{
	struct urb *urb;
	int i;

	FUNC3("stopping V4L2\n");

	if (dev->stream_state == STREAM_ON) {
		FUNC3("stopping V4L2 active URBs\n");
		FUNC0(dev);
		/* stop urbs */
		for (i = 0; i < dev->isoc_ctl.num_bufs; i++) {
			urb = dev->isoc_ctl.urb[i];
			if (urb) {
				if (!FUNC2())
					FUNC4(urb);
				else
					FUNC5(urb);
			}
		}
	}

	if (dev->vid_timeout_running)
		FUNC1(&dev->vid_timeout);
	if (dev->vbi_timeout_running)
		FUNC1(&dev->vbi_timeout);
}