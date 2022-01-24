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
struct netcp_intf {int /*<<< orphan*/  dev; } ;
struct netcp_addr {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct netcp_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct netcp_intf *netcp, struct netcp_addr *naddr)
{
	FUNC1(&naddr->node);
	FUNC0(netcp->dev, naddr);
}