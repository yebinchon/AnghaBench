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
struct dvb_demux_feed {int pusi_seen; struct dvb_demux* demux; } ;
struct dvb_demux {struct av7110* priv; } ;
struct av7110 {int /*<<< orphan*/  feedlock1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct av7110*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct av7110*) ; 

__attribute__((used)) static int FUNC4(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux = feed->demux;
	struct av7110 *budget = demux->priv;
	int status;

	FUNC0(2, "av7110: %p\n", budget);

	FUNC1(&budget->feedlock1);
	feed->pusi_seen = false; /* have a clean section start */
	status = FUNC3(budget);
	FUNC2(&budget->feedlock1);
	return status;
}