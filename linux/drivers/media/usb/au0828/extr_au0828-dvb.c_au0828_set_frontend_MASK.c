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
struct dvb_frontend {TYPE_1__* dvb; } ;
struct au0828_dvb {int (* set_frontend ) (struct dvb_frontend*) ;int /*<<< orphan*/  lock; } ;
struct au0828_dev {int urb_streaming; int /*<<< orphan*/  restart_streaming; struct au0828_dvb dvb; } ;
struct TYPE_2__ {struct au0828_dev* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct au0828_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct au0828_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct au0828_dev*) ; 
 int FUNC7 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC8(struct dvb_frontend *fe)
{
	struct au0828_dev *dev = fe->dvb->priv;
	struct au0828_dvb *dvb = &dev->dvb;
	int ret, was_streaming;

	FUNC3(&dvb->lock);
	was_streaming = dev->urb_streaming;
	if (was_streaming) {
		FUNC1(dev, 1);

		/*
		 * We can't hold a mutex here, as the restart_streaming
		 * kthread may also hold it.
		 */
		FUNC4(&dvb->lock);
		FUNC2(&dev->restart_streaming);
		FUNC3(&dvb->lock);

		FUNC6(dev);
	}
	FUNC4(&dvb->lock);

	ret = dvb->set_frontend(fe);

	if (was_streaming) {
		FUNC3(&dvb->lock);
		FUNC0(dev);
		FUNC5(dev);
		FUNC4(&dvb->lock);
	}

	return ret;
}