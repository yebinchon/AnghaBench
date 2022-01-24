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
struct saa7134_dev {int /*<<< orphan*/  slock; TYPE_2__ vbi_q; } ;
struct TYPE_4__ {int top_seen; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_DONE ; 
 int /*<<< orphan*/  FUNC0 (struct saa7134_dev*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct saa7134_dev*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct saa7134_dev *dev, unsigned long status)
{
	FUNC2(&dev->slock);
	if (dev->vbi_q.curr) {
		/* make sure we have seen both fields */
		if ((status & 0x10) == 0x00) {
			dev->vbi_q.curr->top_seen = 1;
			goto done;
		}
		if (!dev->vbi_q.curr->top_seen)
			goto done;

		FUNC0(dev, &dev->vbi_q, VB2_BUF_STATE_DONE);
	}
	FUNC1(dev, &dev->vbi_q);

 done:
	FUNC3(&dev->slock);
}