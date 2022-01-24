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
struct TYPE_2__ {void* qflags; void* mode; void* bursttime; void* logcwmax; void* logcwmin; void* aifs; void* priority; } ;
struct ar5523_cmd_txq_setup {TYPE_1__ attr; void* len; void* qid; } ;
struct ar5523 {int dummy; } ;
typedef  int /*<<< orphan*/  qinfo ;

/* Variables and functions */
 int /*<<< orphan*/  WDCMSG_SETUP_TX_QUEUE ; 
 int FUNC0 (struct ar5523*,int /*<<< orphan*/ ,struct ar5523_cmd_txq_setup*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar5523*,char*) ; 
 void* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ar5523 *ar)
{
	struct ar5523_cmd_txq_setup qinfo;

	FUNC1(ar, "setting up Tx queue\n");
	qinfo.qid	     = FUNC2(0);
	qinfo.len	     = FUNC2(sizeof(qinfo.attr));
	qinfo.attr.priority  = FUNC2(0);	/* XXX */
	qinfo.attr.aifs	     = FUNC2(3);
	qinfo.attr.logcwmin  = FUNC2(4);
	qinfo.attr.logcwmax  = FUNC2(10);
	qinfo.attr.bursttime = FUNC2(0);
	qinfo.attr.mode	     = FUNC2(0);
	qinfo.attr.qflags    = FUNC2(1);	/* XXX? */
	return FUNC0(ar, WDCMSG_SETUP_TX_QUEUE, &qinfo,
				 sizeof(qinfo), 0);
}