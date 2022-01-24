#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct net {int dummy; } ;
struct ipvlan_netns {int ipvl_nf_hook_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ipvl_nfops ; 
 int /*<<< orphan*/  ipvlan_netid ; 
 struct ipvlan_netns* FUNC1 (struct net*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net *net)
{
	struct ipvlan_netns *vnet = FUNC1(net, ipvlan_netid);
	int err = 0;

	if (!vnet->ipvl_nf_hook_refcnt) {
		err = FUNC2(net, ipvl_nfops,
					    FUNC0(ipvl_nfops));
		if (!err)
			vnet->ipvl_nf_hook_refcnt = 1;
	} else {
		vnet->ipvl_nf_hook_refcnt++;
	}

	return err;
}