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
typedef  union mlxsw_sp_l3addr {int dummy; } mlxsw_sp_l3addr ;
struct net_device {int dummy; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;

/* Variables and functions */
 union mlxsw_sp_l3addr FUNC0 (int,struct net_device const*) ; 
 union mlxsw_sp_l3addr FUNC1 (int,struct net_device const*) ; 
 int /*<<< orphan*/  FUNC2 (union mlxsw_sp_l3addr) ; 

__attribute__((used)) static bool FUNC3(enum mlxsw_sp_l3proto proto,
					  const struct net_device *ol_dev)
{
	union mlxsw_sp_l3addr saddr = FUNC1(proto, ol_dev);
	union mlxsw_sp_l3addr daddr = FUNC0(proto, ol_dev);

	/* Tunnels with unset local or remote address are valid in Linux and
	 * used for lightweight tunnels (LWT) and Non-Broadcast Multi-Access
	 * (NBMA) tunnels. In principle these can be offloaded, but the driver
	 * currently doesn't support this. So punt.
	 */
	return !FUNC2(saddr) &&
	       !FUNC2(daddr);
}