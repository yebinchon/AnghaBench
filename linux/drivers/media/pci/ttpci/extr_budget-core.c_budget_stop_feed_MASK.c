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
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {scalar_t__ priv; } ;
struct budget {scalar_t__ feeding; int /*<<< orphan*/  feedlock; } ;

/* Variables and functions */
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

	FUNC1(&budget->feedlock);
	if (--budget->feeding == 0)
		status = FUNC3(budget);
	FUNC2(&budget->feedlock);
	return status;
}