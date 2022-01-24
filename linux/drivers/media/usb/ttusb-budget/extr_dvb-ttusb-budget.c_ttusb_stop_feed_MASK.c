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
struct ttusb {scalar_t__ running_feed_count; } ;
struct dvb_demux_feed {int /*<<< orphan*/  index; scalar_t__ demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttusb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ttusb*) ; 

__attribute__((used)) static int FUNC2(struct dvb_demux_feed *dvbdmxfeed)
{
	struct ttusb *ttusb = (struct ttusb *) dvbdmxfeed->demux;

	FUNC0(ttusb, dvbdmxfeed->index);

	if (--ttusb->running_feed_count == 0)
		FUNC1(ttusb);

	return 0;
}