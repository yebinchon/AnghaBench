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
typedef  size_t u8 ;
struct ipvl_port {int /*<<< orphan*/ * hlhead; } ;
struct ipvl_dev {struct ipvl_port* port; } ;
struct ipvl_addr {scalar_t__ atype; int /*<<< orphan*/  hlnode; int /*<<< orphan*/  ip4addr; int /*<<< orphan*/  ip6addr; } ;

/* Variables and functions */
 scalar_t__ IPVL_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ipvl_dev *ipvlan, struct ipvl_addr *addr)
{
	struct ipvl_port *port = ipvlan->port;
	u8 hash;

	hash = (addr->atype == IPVL_IPV6) ?
	       FUNC3(&addr->ip6addr) :
	       FUNC2(&addr->ip4addr);
	if (FUNC1(&addr->hlnode))
		FUNC0(&addr->hlnode, &port->hlhead[hash]);
}