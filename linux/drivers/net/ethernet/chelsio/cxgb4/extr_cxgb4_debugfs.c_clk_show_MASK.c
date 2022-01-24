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
typedef  unsigned long long u32 ;
struct seq_file {struct adapter* private; } ;
struct TYPE_3__ {int cclk; } ;
struct TYPE_4__ {TYPE_1__ vpd; } ;
struct adapter {TYPE_2__ params; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long long) ; 
 unsigned long long FUNC1 (unsigned long long) ; 
 unsigned int FUNC2 (unsigned long long) ; 
 unsigned int FUNC3 (unsigned long long) ; 
 int /*<<< orphan*/  TP_DACK_TIMER_A ; 
 int /*<<< orphan*/  TP_FINWAIT2_TIMER_A ; 
 int /*<<< orphan*/  TP_INIT_SRTT_A ; 
 int /*<<< orphan*/  TP_KEEP_IDLE_A ; 
 int /*<<< orphan*/  TP_KEEP_INTVL_A ; 
 int /*<<< orphan*/  TP_PERS_MAX_A ; 
 int /*<<< orphan*/  TP_PERS_MIN_A ; 
 int /*<<< orphan*/  TP_RXT_MAX_A ; 
 int /*<<< orphan*/  TP_RXT_MIN_A ; 
 int /*<<< orphan*/  TP_TIMER_RESOLUTION_A ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char*,unsigned long long) ; 
 unsigned long long FUNC5 (struct adapter*,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC6 (char*,int,unsigned int,int) ; 

__attribute__((used)) static int FUNC7(struct seq_file *seq, void *v)
{
	char buf[32];
	struct adapter *adap = seq->private;
	unsigned int cclk_ps = 1000000000 / adap->params.vpd.cclk;  /* in ps */
	u32 res = FUNC5(adap, TP_TIMER_RESOLUTION_A);
	unsigned int tre = FUNC2(res);
	unsigned int dack_re = FUNC0(res);
	unsigned long long tp_tick_us = (cclk_ps << tre) / 1000000; /* in us */

	FUNC4(seq, "Core clock period: %s ns\n",
		   FUNC6(buf, sizeof(buf), cclk_ps, 1000));
	FUNC4(seq, "TP timer tick: %s us\n",
		   FUNC6(buf, sizeof(buf), (cclk_ps << tre), 1000000));
	FUNC4(seq, "TCP timestamp tick: %s us\n",
		   FUNC6(buf, sizeof(buf),
			     (cclk_ps << FUNC3(res)), 1000000));
	FUNC4(seq, "DACK tick: %s us\n",
		   FUNC6(buf, sizeof(buf), (cclk_ps << dack_re), 1000000));
	FUNC4(seq, "DACK timer: %u us\n",
		   ((cclk_ps << dack_re) / 1000000) *
		   FUNC5(adap, TP_DACK_TIMER_A));
	FUNC4(seq, "Retransmit min: %llu us\n",
		   tp_tick_us * FUNC5(adap, TP_RXT_MIN_A));
	FUNC4(seq, "Retransmit max: %llu us\n",
		   tp_tick_us * FUNC5(adap, TP_RXT_MAX_A));
	FUNC4(seq, "Persist timer min: %llu us\n",
		   tp_tick_us * FUNC5(adap, TP_PERS_MIN_A));
	FUNC4(seq, "Persist timer max: %llu us\n",
		   tp_tick_us * FUNC5(adap, TP_PERS_MAX_A));
	FUNC4(seq, "Keepalive idle timer: %llu us\n",
		   tp_tick_us * FUNC5(adap, TP_KEEP_IDLE_A));
	FUNC4(seq, "Keepalive interval: %llu us\n",
		   tp_tick_us * FUNC5(adap, TP_KEEP_INTVL_A));
	FUNC4(seq, "Initial SRTT: %llu us\n",
		   tp_tick_us * FUNC1(FUNC5(adap, TP_INIT_SRTT_A)));
	FUNC4(seq, "FINWAIT2 timer: %llu us\n",
		   tp_tick_us * FUNC5(adap, TP_FINWAIT2_TIMER_A));

	return 0;
}