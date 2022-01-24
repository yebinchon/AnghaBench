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
typedef  int /*<<< orphan*/  u8 ;
struct netcp_intf {int /*<<< orphan*/  addr_list; int /*<<< orphan*/  dev; } ;
struct netcp_addr {int type; int /*<<< orphan*/  node; int /*<<< orphan*/  addr; struct netcp_intf* netcp; scalar_t__ flags; } ;
typedef  enum netcp_addr_type { ____Placeholder_netcp_addr_type } netcp_addr_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct netcp_addr* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct netcp_addr *FUNC4(struct netcp_intf *netcp,
					 const u8 *addr,
					 enum netcp_addr_type type)
{
	struct netcp_addr *naddr;

	naddr = FUNC0(netcp->dev, sizeof(*naddr), GFP_ATOMIC);
	if (!naddr)
		return NULL;

	naddr->type = type;
	naddr->flags = 0;
	naddr->netcp = netcp;
	if (addr)
		FUNC2(naddr->addr, addr);
	else
		FUNC1(naddr->addr);
	FUNC3(&naddr->node, &netcp->addr_list);

	return naddr;
}