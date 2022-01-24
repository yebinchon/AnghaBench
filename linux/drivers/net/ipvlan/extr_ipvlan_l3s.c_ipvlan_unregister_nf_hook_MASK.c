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
struct ipvlan_netns {int /*<<< orphan*/  ipvl_nf_hook_refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  ipvl_nfops ; 
 int /*<<< orphan*/  ipvlan_netid ; 
 struct ipvlan_netns* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct net *net)
{
	struct ipvlan_netns *vnet = FUNC2(net, ipvlan_netid);

	if (FUNC1(!vnet->ipvl_nf_hook_refcnt))
		return;

	vnet->ipvl_nf_hook_refcnt--;
	if (!vnet->ipvl_nf_hook_refcnt)
		FUNC3(net, ipvl_nfops,
					FUNC0(ipvl_nfops));
}