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
struct netup_hw_pid_filter {int /*<<< orphan*/  (* stop_feed ) (struct dvb_demux_feed*) ;int /*<<< orphan*/  (* start_feed ) (struct dvb_demux_feed*) ;} ;
struct fpga_internal {struct netup_hw_pid_filter** pid_filt; } ;
struct fpga_inode {struct fpga_internal* internal; } ;
struct dvb_demux_feed {int pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netup_hw_pid_filter*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct netup_hw_pid_filter*,int,int) ; 
 struct fpga_inode* FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_demux_feed*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_demux_feed*) ; 

__attribute__((used)) static int FUNC5(void *demux_dev, int filt_nr,
		struct dvb_demux_feed *feed, int onoff)
{
	struct fpga_inode *temp_int = FUNC2(demux_dev);
	struct fpga_internal *inter = temp_int->internal;
	struct netup_hw_pid_filter *pid_filt = inter->pid_filt[filt_nr - 1];

	FUNC0(pid_filt, feed->pid, onoff ? 0 : 1);
	/* call old feed proc's */
	if (onoff)
		pid_filt->start_feed(feed);
	else
		pid_filt->stop_feed(feed);

	if (feed->pid == 0x2000)
		FUNC1(pid_filt, filt_nr,
						onoff ? 0 : 1);

	return 0;
}