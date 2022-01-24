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
struct au0828_dvb {int /*<<< orphan*/  lock; scalar_t__ frontend; } ;
struct au0828_dev {scalar_t__ need_urb_start; struct au0828_dvb dvb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct au0828_dev*) ; 

void FUNC6(struct au0828_dev *dev)
{
	struct au0828_dvb *dvb = &dev->dvb;
	int rc;

	if (dvb->frontend) {
		/* resume frontend - does fe and tuner init */
		rc = FUNC1(dvb->frontend);
		FUNC4("au0828_dvb_resume(): Resuming DVB fe %d\n", rc);
		if (dev->need_urb_start) {
			/* Start transport */
			FUNC2(&dvb->lock);
			FUNC0(dev);
			FUNC5(dev);
			FUNC3(&dvb->lock);
		}
	}
}