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
struct netcp_intf {int dummy; } ;
struct netcp_addr {int /*<<< orphan*/  flags; } ;
typedef  enum netcp_addr_type { ____Placeholder_netcp_addr_type } netcp_addr_type ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_NEW ; 
 int /*<<< orphan*/  ADDR_VALID ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct netcp_addr* FUNC1 (struct netcp_intf*,int /*<<< orphan*/  const*,int) ; 
 struct netcp_addr* FUNC2 (struct netcp_intf*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(struct netcp_intf *netcp, const u8 *addr,
				enum netcp_addr_type type)
{
	struct netcp_addr *naddr;

	naddr = FUNC2(netcp, addr, type);
	if (naddr) {
		naddr->flags |= ADDR_VALID;
		return;
	}

	naddr = FUNC1(netcp, addr, type);
	if (!FUNC0(!naddr))
		naddr->flags |= ADDR_NEW;
}