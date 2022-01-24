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
typedef  int /*<<< orphan*/  u64 ;
struct ehea_port {TYPE_1__* mc_list; } ;
struct ehea_mc_list {int /*<<< orphan*/  list; int /*<<< orphan*/  macaddr; } ;
struct TYPE_2__ {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  H_REG_BCMC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ehea_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ehea_mc_list*) ; 
 struct ehea_mc_list* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(struct ehea_port *port, u8 *mc_mac_addr)
{
	struct ehea_mc_list *ehea_mcl_entry;
	u64 hret;

	ehea_mcl_entry = FUNC3(sizeof(*ehea_mcl_entry), GFP_ATOMIC);
	if (!ehea_mcl_entry)
		return;

	FUNC0(&ehea_mcl_entry->list);

	FUNC5(&ehea_mcl_entry->macaddr, mc_mac_addr, ETH_ALEN);

	hret = FUNC1(port, ehea_mcl_entry->macaddr,
					 H_REG_BCMC);
	if (!hret)
		FUNC4(&ehea_mcl_entry->list, &port->mc_list->list);
	else {
		FUNC6("failed registering mcast MAC\n");
		FUNC2(ehea_mcl_entry);
	}
}