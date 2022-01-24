#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_ipip_entry {TYPE_2__* ol_dev; TYPE_1__* ol_lb; scalar_t__ decap_fib_entry; } ;
struct mlxsw_sp {int dummy; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  common; } ;

/* Variables and functions */
 int IFF_UP ; 
 int /*<<< orphan*/  FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ; 
 int FUNC1 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,int,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,int /*<<< orphan*/ *) ; 

int FUNC4(struct mlxsw_sp *mlxsw_sp,
					struct mlxsw_sp_ipip_entry *ipip_entry,
					bool recreate_loopback,
					bool keep_encap,
					bool update_nexthops,
					struct netlink_ext_ack *extack)
{
	int err;

	/* RIFs can't be edited, so to update loopback, we need to destroy and
	 * recreate it. That creates a window of opportunity where RALUE and
	 * RATR registers end up referencing a RIF that's already gone. RATRs
	 * are handled in mlxsw_sp_ipip_entry_ol_lb_update(), and to take care
	 * of RALUE, demote the decap route back.
	 */
	if (ipip_entry->decap_fib_entry)
		FUNC0(mlxsw_sp, ipip_entry);

	if (recreate_loopback) {
		err = FUNC1(mlxsw_sp, ipip_entry,
						       keep_encap, extack);
		if (err)
			return err;
	} else if (update_nexthops) {
		FUNC3(mlxsw_sp,
					    &ipip_entry->ol_lb->common);
	}

	if (ipip_entry->ol_dev->flags & IFF_UP)
		FUNC2(mlxsw_sp, ipip_entry);

	return 0;
}