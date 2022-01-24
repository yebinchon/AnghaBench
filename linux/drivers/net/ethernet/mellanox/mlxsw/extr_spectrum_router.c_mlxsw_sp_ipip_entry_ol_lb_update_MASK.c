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
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_rif_ipip_lb {int /*<<< orphan*/  common; } ;
struct mlxsw_sp_ipip_entry {struct mlxsw_sp_rif_ipip_lb* ol_lb; int /*<<< orphan*/  ol_dev; int /*<<< orphan*/  ipipt; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mlxsw_sp_rif_ipip_lb*) ; 
 int FUNC1 (struct mlxsw_sp_rif_ipip_lb*) ; 
 struct mlxsw_sp_rif_ipip_lb* FUNC2 (struct mlxsw_sp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct mlxsw_sp *mlxsw_sp,
				 struct mlxsw_sp_ipip_entry *ipip_entry,
				 bool keep_encap,
				 struct netlink_ext_ack *extack)
{
	struct mlxsw_sp_rif_ipip_lb *old_lb_rif = ipip_entry->ol_lb;
	struct mlxsw_sp_rif_ipip_lb *new_lb_rif;

	new_lb_rif = FUNC2(mlxsw_sp,
						     ipip_entry->ipipt,
						     ipip_entry->ol_dev,
						     extack);
	if (FUNC0(new_lb_rif))
		return FUNC1(new_lb_rif);
	ipip_entry->ol_lb = new_lb_rif;

	if (keep_encap)
		FUNC3(mlxsw_sp, &old_lb_rif->common,
					     &new_lb_rif->common);

	FUNC4(&old_lb_rif->common);

	return 0;
}