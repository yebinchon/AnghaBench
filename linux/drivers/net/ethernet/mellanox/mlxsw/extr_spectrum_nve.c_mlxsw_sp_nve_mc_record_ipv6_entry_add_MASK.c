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
struct mlxsw_sp_nve_mc_record {int dummy; } ;
struct mlxsw_sp_nve_mc_entry {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1(struct mlxsw_sp_nve_mc_record *mc_record,
				      struct mlxsw_sp_nve_mc_entry *mc_entry,
				      const union mlxsw_sp_l3addr *addr)
{
	FUNC0(1);

	return -EINVAL;
}