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
typedef  size_t u8 ;
struct tp_fcoe_stats {int dummy; } ;
struct seq_file {struct adapter* private; } ;
struct TYPE_3__ {size_t nchan; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {int /*<<< orphan*/  stats_lock; TYPE_2__ params; } ;

/* Variables and functions */
 int NCHAN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  frames_ddp ; 
 int /*<<< orphan*/  frames_drop ; 
 int /*<<< orphan*/  octets_ddp ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,size_t,struct tp_fcoe_stats*,int) ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq)
{
	struct adapter *adap = seq->private;
	struct tp_fcoe_stats stats[NCHAN];
	u8 i;

	FUNC1(&adap->stats_lock);
	for (i = 0; i < adap->params.arch.nchan; i++)
		FUNC3(adap, i, &stats[i], false);
	FUNC2(&adap->stats_lock);

	FUNC0("fcoe_octets_ddp", octets_ddp);
	FUNC0("fcoe_frames_ddp", frames_ddp);
	FUNC0("fcoe_frames_drop", frames_drop);
}