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
struct dvb_demux_feed {int pusi_seen; struct dvb_demux* demux; } ;
struct TYPE_2__ {int /*<<< orphan*/  frontend; } ;
struct dvb_demux {TYPE_1__ dmx; scalar_t__ priv; } ;
struct budget {int /*<<< orphan*/  feedlock; int /*<<< orphan*/  feeding; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,char*,struct budget*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct budget*) ; 

__attribute__((used)) static int FUNC4(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux = feed->demux;
	struct budget *budget = (struct budget *) demux->priv;
	int status = 0;

	FUNC0(2, "budget: %p\n", budget);

	if (!demux->dmx.frontend)
		return -EINVAL;

	FUNC1(&budget->feedlock);
	feed->pusi_seen = false; /* have a clean section start */
	if (budget->feeding++ == 0)
		status = FUNC3(budget);
	FUNC2(&budget->feedlock);
	return status;
}