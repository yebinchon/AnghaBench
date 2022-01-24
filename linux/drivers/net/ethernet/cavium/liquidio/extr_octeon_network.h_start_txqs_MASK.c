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
struct net_device {int real_num_tx_queues; } ;
struct TYPE_4__ {scalar_t__ link_up; } ;
struct TYPE_5__ {TYPE_1__ s; } ;
struct TYPE_6__ {TYPE_2__ link; } ;
struct lio {TYPE_3__ linfo; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 

__attribute__((used)) static inline void FUNC2(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);
	int i;

	if (lio->linfo.link.s.link_up) {
		for (i = 0; i < netdev->real_num_tx_queues; i++)
			FUNC1(netdev, i);
	}
}