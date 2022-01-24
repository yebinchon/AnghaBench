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
typedef  int u32 ;
struct TYPE_6__ {int /*<<< orphan*/  pkt_mismatch; int /*<<< orphan*/  pkt_too_big; int /*<<< orphan*/  freelistQ_empty; int /*<<< orphan*/  respQ_overflow; int /*<<< orphan*/  respQ_empty; } ;
struct sge {TYPE_3__ stats; struct adapter* adapter; } ;
struct adapter {scalar_t__ regs; int /*<<< orphan*/  name; TYPE_2__* port; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int hw_features; } ;

/* Variables and functions */
 scalar_t__ A_SG_INT_CAUSE ; 
 int F_FL_EXHAUSTED ; 
 int F_PACKET_MISMATCH ; 
 int F_PACKET_TOO_BIG ; 
 int F_RESPQ_EXHAUSTED ; 
 int F_RESPQ_OVERFLOW ; 
 int NETIF_F_TSO ; 
 int SGE_INT_FATAL ; 
 int /*<<< orphan*/  FUNC0 (struct sge*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

int FUNC5(struct sge *sge)
{
	struct adapter *adapter = sge->adapter;
	u32 cause = FUNC2(adapter->regs + A_SG_INT_CAUSE);

	if (adapter->port[0].dev->hw_features & NETIF_F_TSO)
		cause &= ~F_PACKET_TOO_BIG;
	if (cause & F_RESPQ_EXHAUSTED)
		sge->stats.respQ_empty++;
	if (cause & F_RESPQ_OVERFLOW) {
		sge->stats.respQ_overflow++;
		FUNC1("%s: SGE response queue overflow\n",
			 adapter->name);
	}
	if (cause & F_FL_EXHAUSTED) {
		sge->stats.freelistQ_empty++;
		FUNC0(sge);
	}
	if (cause & F_PACKET_TOO_BIG) {
		sge->stats.pkt_too_big++;
		FUNC1("%s: SGE max packet size exceeded\n",
			 adapter->name);
	}
	if (cause & F_PACKET_MISMATCH) {
		sge->stats.pkt_mismatch++;
		FUNC1("%s: SGE packet mismatch\n", adapter->name);
	}
	if (cause & SGE_INT_FATAL)
		FUNC3(adapter);

	FUNC4(cause, adapter->regs + A_SG_INT_CAUSE);
	return 0;
}