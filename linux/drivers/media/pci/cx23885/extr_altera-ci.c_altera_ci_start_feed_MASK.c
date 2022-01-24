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
struct dvb_demux_feed {int /*<<< orphan*/  demux; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct dvb_demux_feed*,int) ; 

__attribute__((used)) static int FUNC1(struct dvb_demux_feed *feed, int num)
{
	FUNC0(feed->demux, num, feed, 1);

	return 0;
}