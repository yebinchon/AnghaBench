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
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp_neigh_entry {int dummy; } ;
struct in6_addr {int dummy; } ;
struct devlink_dpipe_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct devlink_dpipe_entry*,struct mlxsw_sp_rif*,unsigned char*,struct in6_addr*) ; 
 struct in6_addr* FUNC1 (struct mlxsw_sp_neigh_entry*) ; 
 unsigned char* FUNC2 (struct mlxsw_sp_neigh_entry*) ; 

__attribute__((used)) static void
FUNC3(struct devlink_dpipe_entry *entry,
				      struct mlxsw_sp_neigh_entry *neigh_entry,
				      struct mlxsw_sp_rif *rif)
{
	struct in6_addr *dip;
	unsigned char *ha;

	ha = FUNC2(neigh_entry);
	dip = FUNC1(neigh_entry);

	FUNC0(entry, rif, ha, dip);
}