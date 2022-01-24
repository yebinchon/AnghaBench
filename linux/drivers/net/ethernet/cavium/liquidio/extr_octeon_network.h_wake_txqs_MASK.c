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
struct net_device {int real_num_tx_queues; } ;
struct TYPE_7__ {TYPE_2__* txpciq; } ;
struct lio {TYPE_4__* oct_dev; TYPE_3__ linfo; } ;
struct TYPE_8__ {int num_iqs; } ;
struct TYPE_5__ {int q_no; } ;
struct TYPE_6__ {TYPE_1__ s; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  tx_restart ; 

__attribute__((used)) static inline void FUNC4(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);
	int i, qno;

	for (i = 0; i < netdev->real_num_tx_queues; i++) {
		qno = lio->linfo.txpciq[i % lio->oct_dev->num_iqs].s.q_no;

		if (FUNC2(netdev, i)) {
			FUNC1(lio->oct_dev, qno,
						  tx_restart, 1);
			FUNC3(netdev, i);
		}
	}
}