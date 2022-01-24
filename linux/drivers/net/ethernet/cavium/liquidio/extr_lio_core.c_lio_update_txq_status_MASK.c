#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct octeon_instr_queue {size_t ifidx; int /*<<< orphan*/  q_index; } ;
struct octeon_device {TYPE_4__* props; struct octeon_instr_queue** instr_queue; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {scalar_t__ link_up; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
struct TYPE_7__ {TYPE_2__ link; } ;
struct lio {int /*<<< orphan*/  oct_dev; TYPE_3__ linfo; } ;
struct TYPE_8__ {struct net_device* netdev; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct octeon_device*,int) ; 
 int /*<<< orphan*/  tx_restart ; 

__attribute__((used)) static void FUNC5(struct octeon_device *oct, int iq_num)
{
	struct octeon_instr_queue *iq = oct->instr_queue[iq_num];
	struct net_device *netdev;
	struct lio *lio;

	netdev = oct->props[iq->ifidx].netdev;

	/* This is needed because the first IQ does not have
	 * a netdev associated with it.
	 */
	if (!netdev)
		return;

	lio = FUNC0(netdev);
	if (FUNC2(netdev, iq->q_index) &&
	    lio->linfo.link.s.link_up &&
	    (!FUNC4(oct, iq_num))) {
		FUNC3(netdev, iq->q_index);
		FUNC1(lio->oct_dev, iq_num,
					  tx_restart, 1);
	}
}