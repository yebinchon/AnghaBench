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
struct net_device {int dummy; } ;
struct mlxsw_sp_ipip_entry {int dummy; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 struct mlxsw_sp_ipip_entry* FUNC0 (struct mlxsw_sp*,struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ; 

__attribute__((used)) static void FUNC2(struct mlxsw_sp *mlxsw_sp,
						struct net_device *ol_dev)
{
	struct mlxsw_sp_ipip_entry *ipip_entry;

	ipip_entry = FUNC0(mlxsw_sp, ol_dev);
	if (ipip_entry)
		FUNC1(mlxsw_sp, ipip_entry);
}