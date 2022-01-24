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
struct dvb_demux_feed {int dummy; } ;
struct dm1105_dev {scalar_t__ full_ts_users; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm1105_dev*) ; 
 struct dm1105_dev* FUNC1 (struct dvb_demux_feed*) ; 

__attribute__((used)) static int FUNC2(struct dvb_demux_feed *f)
{
	struct dm1105_dev *dev = FUNC1(f);

	if (--dev->full_ts_users == 0)
		FUNC0(dev);

	return 0;
}