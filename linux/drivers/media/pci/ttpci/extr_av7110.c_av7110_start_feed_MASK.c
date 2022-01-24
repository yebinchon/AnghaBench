#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  sec; } ;
struct dvb_demux_feed {int pid; scalar_t__ type; int ts_type; scalar_t__ pes_type; TYPE_2__ feed; TYPE_5__* filter; struct dvb_demux* demux; } ;
struct TYPE_9__ {TYPE_3__* frontend; } ;
struct dvb_demux {int* pids; int playing; int filternum; TYPE_5__* filter; TYPE_4__ dmx; struct av7110* priv; } ;
struct av7110 {scalar_t__ full_ts; int /*<<< orphan*/  aout; int /*<<< orphan*/  avout; } ;
struct TYPE_6__ {int /*<<< orphan*/ * parent; } ;
struct TYPE_10__ {scalar_t__ state; scalar_t__ type; TYPE_1__ filter; } ;
struct TYPE_8__ {int source; } ;

/* Variables and functions */
#define  DMX_MEMORY_FE 128 
 scalar_t__ DMX_PES_PCR ; 
 scalar_t__ DMX_STATE_GO ; 
 scalar_t__ DMX_STATE_READY ; 
 scalar_t__ DMX_TYPE_SEC ; 
 scalar_t__ DMX_TYPE_TS ; 
 int EINVAL ; 
 int /*<<< orphan*/  RP_AV ; 
 int FUNC0 (TYPE_5__*) ; 
 int TS_DECODER ; 
 int TS_PACKET ; 
 int FUNC1 (struct av7110*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dvb_demux_feed*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,struct av7110*) ; 
 int FUNC4 (struct dvb_demux_feed*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux = feed->demux;
	struct av7110 *av7110 = demux->priv;
	int ret = 0;

	FUNC3(4, "%p\n", av7110);

	if (!demux->dmx.frontend)
		return -EINVAL;

	if (!av7110->full_ts && feed->pid > 0x1fff)
		return -EINVAL;

	if (feed->type == DMX_TYPE_TS) {
		if ((feed->ts_type & TS_DECODER) &&
		    (feed->pes_type <= DMX_PES_PCR)) {
			switch (demux->dmx.frontend->source) {
			case DMX_MEMORY_FE:
				if (feed->ts_type & TS_DECODER)
				       if (feed->pes_type < 2 &&
					   !(demux->pids[0] & 0x8000) &&
					   !(demux->pids[1] & 0x8000)) {
					       FUNC5(&av7110->avout);
					       FUNC5(&av7110->aout);
					       ret = FUNC1(av7110,RP_AV);
					       if (!ret)
						       demux->playing = 1;
					}
				break;
			default:
				ret = FUNC4(feed);
				break;
			}
		} else if ((feed->ts_type & TS_PACKET) &&
			   (demux->dmx.frontend->source != DMX_MEMORY_FE)) {
			ret = FUNC0(feed->filter);
		}
	}

	if (av7110->full_ts) {
		FUNC2(feed);
		return ret;
	}

	if (feed->type == DMX_TYPE_SEC) {
		int i;

		for (i = 0; i < demux->filternum; i++) {
			if (demux->filter[i].state != DMX_STATE_READY)
				continue;
			if (demux->filter[i].type != DMX_TYPE_SEC)
				continue;
			if (demux->filter[i].filter.parent != &feed->feed.sec)
				continue;
			demux->filter[i].state = DMX_STATE_GO;
			if (demux->dmx.frontend->source != DMX_MEMORY_FE) {
				ret = FUNC0(&demux->filter[i]);
				if (ret)
					break;
			}
		}
	}

	return ret;
}