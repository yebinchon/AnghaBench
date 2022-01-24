#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx_errors; } ;
struct TYPE_5__ {TYPE_1__ gen; } ;
struct TYPE_6__ {TYPE_2__ MacStat; } ;
struct s_smc {TYPE_3__ os; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(struct s_smc *smc, int stat)
{
//      BOOLEAN RingIsUp ;

	FUNC0("smt_stat_counter\n");
	switch (stat) {
	case 0:
		FUNC0("Ring operational change.\n");
		break;
	case 1:
		FUNC0("Receive fifo overflow.\n");
		smc->os.MacStat.gen.rx_errors++;
		break;
	default:
		FUNC0("Unknown status (%d).\n", stat);
		break;
	}
}