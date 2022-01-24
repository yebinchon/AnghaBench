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
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char const*,int,union mlxsw_sp_l3addr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
					    const char *mac,
					    enum mlxsw_sp_l3proto proto,
					    union mlxsw_sp_l3addr *addr,
					    __be32 vni,
					    bool adding)
{
	if (FUNC1(dev))
		FUNC0(dev, mac, proto, addr, vni,
						  adding);
}