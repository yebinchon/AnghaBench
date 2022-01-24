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
struct em28xx_dvb {int /*<<< orphan*/  lock; int /*<<< orphan*/  nfeeds; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct em28xx_dvb* priv; } ;

/* Variables and functions */
 int FUNC0 (struct em28xx_dvb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct dvb_demux_feed *feed)
{
	struct dvb_demux *demux  = feed->demux;
	struct em28xx_dvb *dvb = demux->priv;
	int err = 0;

	FUNC1(&dvb->lock);
	dvb->nfeeds--;

	if (!dvb->nfeeds)
		err = FUNC0(dvb);

	FUNC2(&dvb->lock);
	return err;
}