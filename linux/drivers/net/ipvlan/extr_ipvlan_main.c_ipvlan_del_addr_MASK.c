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
struct ipvl_dev {int /*<<< orphan*/  addrs_lock; } ;
struct ipvl_addr {int /*<<< orphan*/  anode; } ;

/* Variables and functions */
 struct ipvl_addr* FUNC0 (struct ipvl_dev*,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ipvl_addr*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipvl_addr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ipvl_dev *ipvlan, void *iaddr, bool is_v6)
{
	struct ipvl_addr *addr;

	FUNC4(&ipvlan->addrs_lock);
	addr = FUNC0(ipvlan, iaddr, is_v6);
	if (!addr) {
		FUNC5(&ipvlan->addrs_lock);
		return;
	}

	FUNC1(addr);
	FUNC3(&addr->anode);
	FUNC5(&ipvlan->addrs_lock);
	FUNC2(addr, rcu);
}