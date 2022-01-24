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
struct i40e_pf {int /*<<< orphan*/  state; int /*<<< orphan*/  pending_udp_bitmap; TYPE_1__* udp_ports; } ;
struct TYPE_2__ {scalar_t__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int I40E_MAX_PF_UDP_OFFLOAD_PORTS ; 
 int /*<<< orphan*/  __I40E_UDP_FILTER_SYNC_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i40e_pf *pf)
{
	int i;

	/* loop through and set pending bit for all active UDP filters */
	for (i = 0; i < I40E_MAX_PF_UDP_OFFLOAD_PORTS; i++) {
		if (pf->udp_ports[i].port)
			pf->pending_udp_bitmap |= FUNC0(i);
	}

	FUNC1(__I40E_UDP_FILTER_SYNC_PENDING, pf->state);
}