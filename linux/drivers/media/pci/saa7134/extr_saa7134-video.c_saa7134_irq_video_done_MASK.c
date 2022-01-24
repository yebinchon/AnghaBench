#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* curr; } ;
struct saa7134_dev {int field; int /*<<< orphan*/  slock; TYPE_2__ video_q; } ;
typedef  enum v4l2_field { ____Placeholder_v4l2_field } v4l2_field ;
struct TYPE_4__ {int top_seen; } ;

/* Variables and functions */
 int V4L2_FIELD_BOTTOM ; 
 scalar_t__ FUNC0 (int) ; 
 int V4L2_FIELD_TOP ; 
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct saa7134_dev *dev, unsigned long status)
{
	enum v4l2_field field;

	FUNC3(&dev->slock);
	if (dev->video_q.curr) {
		field = dev->field;
		if (FUNC0(field)) {
			/* make sure we have seen both fields */
			if ((status & 0x10) == 0x00) {
				dev->video_q.curr->top_seen = 1;
				goto done;
			}
			if (!dev->video_q.curr->top_seen)
				goto done;
		} else if (field == V4L2_FIELD_TOP) {
			if ((status & 0x10) != 0x10)
				goto done;
		} else if (field == V4L2_FIELD_BOTTOM) {
			if ((status & 0x10) != 0x00)
				goto done;
		}
		FUNC1(dev, &dev->video_q, VB2_BUF_STATE_DONE);
	}
	FUNC2(dev, &dev->video_q);

 done:
	FUNC4(&dev->slock);
}