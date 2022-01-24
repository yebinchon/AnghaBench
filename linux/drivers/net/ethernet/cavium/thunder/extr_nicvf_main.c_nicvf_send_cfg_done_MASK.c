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
struct TYPE_2__ {int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct nicvf {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_MBOX_MSG_CFG_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct nicvf*,union nic_mbx*) ; 

__attribute__((used)) static void FUNC2(struct nicvf *nic)
{
	union nic_mbx mbx = {};

	mbx.msg.msg = NIC_MBOX_MSG_CFG_DONE;
	if (FUNC1(nic, &mbx)) {
		FUNC0(nic->netdev,
			   "PF didn't respond to CFG DONE msg\n");
	}
}