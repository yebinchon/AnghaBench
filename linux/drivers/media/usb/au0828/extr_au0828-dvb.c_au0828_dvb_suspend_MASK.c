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
struct au0828_dvb {scalar_t__ frontend; int /*<<< orphan*/  lock; } ;
struct au0828_dev {int need_urb_start; int /*<<< orphan*/  restart_streaming; scalar_t__ urb_streaming; struct au0828_dvb dvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct au0828_dev*) ; 

void FUNC7(struct au0828_dev *dev)
{
	struct au0828_dvb *dvb = &dev->dvb;
	int rc;

	if (dvb->frontend) {
		if (dev->urb_streaming) {
			FUNC1(&dev->restart_streaming);
			/* Stop transport */
			FUNC3(&dvb->lock);
			FUNC6(dev);
			FUNC0(dev, 1);
			FUNC4(&dvb->lock);
			dev->need_urb_start = true;
		}
		/* suspend frontend - does tuner and fe to sleep */
		rc = FUNC2(dvb->frontend);
		FUNC5("au0828_dvb_suspend(): Suspending DVB fe %d\n", rc);
	}
}