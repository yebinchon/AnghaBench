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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  vsi; int /*<<< orphan*/  vid; } ;
struct fm10k_macvlan_request {int set; int /*<<< orphan*/  list; TYPE_1__ vlan; int /*<<< orphan*/  type; } ;
struct fm10k_intfc {int /*<<< orphan*/  macvlan_lock; int /*<<< orphan*/  macvlan_requests; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FM10K_VLAN_REQUEST ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct fm10k_intfc*) ; 
 struct fm10k_macvlan_request* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct fm10k_intfc *interface,
			     u32 vid, u8 vsi, bool set)
{
	struct fm10k_macvlan_request *request;
	unsigned long flags;

	/* This must be atomic since we may be called while the netdev
	 * addr_list_lock is held
	 */
	request = FUNC1(sizeof(*request), GFP_ATOMIC);
	if (!request)
		return -ENOMEM;

	request->type = FM10K_VLAN_REQUEST;
	request->vlan.vid = vid;
	request->vlan.vsi = vsi;
	request->set = set;

	FUNC3(&interface->macvlan_lock, flags);
	FUNC2(&request->list, &interface->macvlan_requests);
	FUNC4(&interface->macvlan_lock, flags);

	FUNC0(interface);

	return 0;
}