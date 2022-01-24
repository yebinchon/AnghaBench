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
struct net_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct TYPE_4__ {scalar_t__ wq; TYPE_1__ wk; } ;
struct lio {TYPE_2__ link_status_wq; } ;

/* Variables and functions */
 struct lio* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev)
{
	struct lio *lio = FUNC0(netdev);

	if (lio->link_status_wq.wq) {
		FUNC1(&lio->link_status_wq.wk.work);
		FUNC2(lio->link_status_wq.wq);
	}
}