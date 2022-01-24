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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ipvlan_netid ; 
 int /*<<< orphan*/  FUNC1 (struct net*) ; 
 int /*<<< orphan*/  FUNC2 (struct net*) ; 
 struct ipvlan_netns* FUNC3 (struct net*,int /*<<< orphan*/ ) ; 

void FUNC4(struct net *oldnet, struct net *newnet)
{
	struct ipvlan_netns *old_vnet;

	FUNC0();

	old_vnet = FUNC3(oldnet, ipvlan_netid);
	if (!old_vnet->ipvl_nf_hook_refcnt)
		return;

	FUNC1(newnet);
	FUNC2(oldnet);
}