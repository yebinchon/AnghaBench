#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int need_two; int /*<<< orphan*/  pt; struct saa7134_dev* dev; int /*<<< orphan*/  timeout; int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int nr_bufs; int nr_packets; } ;
struct saa7134_dev {TYPE_2__ ts_q; int /*<<< orphan*/  pci; scalar_t__ ts_started; TYPE_1__ ts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int VIDEO_MAX_FRAME ; 
 int /*<<< orphan*/  saa7134_buffer_timeout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ts_nr_packets ; 
 int tsbufs ; 

int FUNC4(struct saa7134_dev *dev)
{
	/* sanitycheck insmod options */
	if (tsbufs < 2)
		tsbufs = 2;
	if (tsbufs > VIDEO_MAX_FRAME)
		tsbufs = VIDEO_MAX_FRAME;
	if (ts_nr_packets < 4)
		ts_nr_packets = 4;
	if (ts_nr_packets > 312)
		ts_nr_packets = 312;
	dev->ts.nr_bufs    = tsbufs;
	dev->ts.nr_packets = ts_nr_packets;

	FUNC0(&dev->ts_q.queue);
	FUNC3(&dev->ts_q.timeout, saa7134_buffer_timeout, 0);
	dev->ts_q.dev              = dev;
	dev->ts_q.need_two         = 1;
	dev->ts_started            = 0;
	FUNC1(dev->pci, &dev->ts_q.pt);

	/* init TS hw */
	FUNC2(dev);

	return 0;
}