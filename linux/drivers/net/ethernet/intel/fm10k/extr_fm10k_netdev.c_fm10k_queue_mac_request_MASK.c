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
typedef  void* u16 ;
struct TYPE_2__ {void* vid; void* glort; int /*<<< orphan*/  addr; } ;
struct fm10k_macvlan_request {int set; int /*<<< orphan*/  list; TYPE_1__ mac; int /*<<< orphan*/  type; } ;
struct fm10k_intfc {int /*<<< orphan*/  macvlan_lock; int /*<<< orphan*/  macvlan_requests; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FM10K_MC_MAC_REQUEST ; 
 int /*<<< orphan*/  FM10K_UC_MAC_REQUEST ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct fm10k_intfc*) ; 
 scalar_t__ FUNC2 (unsigned char const*) ; 
 struct fm10k_macvlan_request* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC7(struct fm10k_intfc *interface, u16 glort,
			    const unsigned char *addr, u16 vid, bool set)
{
	struct fm10k_macvlan_request *request;
	unsigned long flags;

	/* This must be atomic since we may be called while the netdev
	 * addr_list_lock is held
	 */
	request = FUNC3(sizeof(*request), GFP_ATOMIC);
	if (!request)
		return -ENOMEM;

	if (FUNC2(addr))
		request->type = FM10K_MC_MAC_REQUEST;
	else
		request->type = FM10K_UC_MAC_REQUEST;

	FUNC0(request->mac.addr, addr);
	request->mac.glort = glort;
	request->mac.vid = vid;
	request->set = set;

	FUNC5(&interface->macvlan_lock, flags);
	FUNC4(&request->list, &interface->macvlan_requests);
	FUNC6(&interface->macvlan_lock, flags);

	FUNC1(interface);

	return 0;
}