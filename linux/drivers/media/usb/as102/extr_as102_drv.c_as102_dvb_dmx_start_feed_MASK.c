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
struct dvb_demux_feed {int /*<<< orphan*/  pid; int /*<<< orphan*/  index; struct dvb_demux* demux; } ;
struct dvb_demux {struct as102_dev_t* priv; } ;
struct as102_dev_t {int /*<<< orphan*/  sem; int /*<<< orphan*/  streaming; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int FUNC0 (struct as102_dev_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct as102_dev_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ pid_filtering ; 

__attribute__((used)) static int FUNC4(struct dvb_demux_feed *dvbdmxfeed)
{
	int ret = 0;
	struct dvb_demux *demux = dvbdmxfeed->demux;
	struct as102_dev_t *as102_dev = demux->priv;

	if (FUNC2(&as102_dev->sem))
		return -ERESTARTSYS;

	if (pid_filtering)
		FUNC1(as102_dev, dvbdmxfeed->index,
				 dvbdmxfeed->pid, 1);

	if (as102_dev->streaming++ == 0)
		ret = FUNC0(as102_dev);

	FUNC3(&as102_dev->sem);
	return ret;
}