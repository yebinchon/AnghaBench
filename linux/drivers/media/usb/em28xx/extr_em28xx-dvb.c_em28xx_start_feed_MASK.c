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
struct em28xx_dvb {int nfeeds; int /*<<< orphan*/  lock; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct TYPE_2__ {int /*<<< orphan*/  frontend; } ;
struct dvb_demux {TYPE_1__ dmx; struct em28xx_dvb* priv; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct em28xx_dvb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux  = feed->demux;
	struct em28xx_dvb *dvb = demux->priv;
	int rc, ret;

	if (!demux->dmx.frontend)
		return -EINVAL;

	FUNC1(&dvb->lock);
	dvb->nfeeds++;
	rc = dvb->nfeeds;

	if (dvb->nfeeds == 1) {
		ret = FUNC0(dvb);
		if (ret < 0)
			rc = ret;
	}

	FUNC2(&dvb->lock);
	return rc;
}