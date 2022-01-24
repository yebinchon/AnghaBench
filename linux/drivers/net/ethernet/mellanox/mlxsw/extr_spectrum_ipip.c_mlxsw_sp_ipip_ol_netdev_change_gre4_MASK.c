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
typedef  int /*<<< orphan*/  u16 ;
struct netlink_ext_ack {int dummy; } ;
struct ip_tunnel_parm {scalar_t__ link; } ;
struct mlxsw_sp_ipip_entry {struct ip_tunnel_parm parms4; int /*<<< orphan*/  ol_dev; } ;
struct mlxsw_sp {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_SP_L3_PROTO_IPV4 ; 
 int FUNC0 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*,int,int,int,struct netlink_ext_ack*) ; 
 scalar_t__ FUNC1 (struct mlxsw_sp*,int /*<<< orphan*/ ,union mlxsw_sp_l3addr,int /*<<< orphan*/ ,struct mlxsw_sp_ipip_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlxsw_sp*,struct mlxsw_sp_ipip_entry*) ; 
 struct ip_tunnel_parm FUNC4 (int /*<<< orphan*/ ) ; 
 union mlxsw_sp_l3addr FUNC5 (struct ip_tunnel_parm) ; 
 scalar_t__ FUNC6 (struct ip_tunnel_parm) ; 
 scalar_t__ FUNC7 (struct ip_tunnel_parm) ; 
 union mlxsw_sp_l3addr FUNC8 (struct ip_tunnel_parm) ; 
 int /*<<< orphan*/  FUNC9 (union mlxsw_sp_l3addr*,union mlxsw_sp_l3addr*) ; 

__attribute__((used)) static int
FUNC10(struct mlxsw_sp *mlxsw_sp,
				    struct mlxsw_sp_ipip_entry *ipip_entry,
				    struct netlink_ext_ack *extack)
{
	union mlxsw_sp_l3addr old_saddr, new_saddr;
	union mlxsw_sp_l3addr old_daddr, new_daddr;
	struct ip_tunnel_parm new_parms;
	bool update_tunnel = false;
	bool update_decap = false;
	bool update_nhs = false;
	int err = 0;

	new_parms = FUNC4(ipip_entry->ol_dev);

	new_saddr = FUNC8(new_parms);
	old_saddr = FUNC8(ipip_entry->parms4);
	new_daddr = FUNC5(new_parms);
	old_daddr = FUNC5(ipip_entry->parms4);

	if (!FUNC9(&new_saddr, &old_saddr)) {
		u16 ul_tb_id = FUNC2(ipip_entry->ol_dev);

		/* Since the local address has changed, if there is another
		 * tunnel with a matching saddr, both need to be demoted.
		 */
		if (FUNC1(mlxsw_sp,
							 MLXSW_SP_L3_PROTO_IPV4,
							 new_saddr, ul_tb_id,
							 ipip_entry)) {
			FUNC3(mlxsw_sp, ipip_entry);
			return 0;
		}

		update_tunnel = true;
	} else if ((FUNC7(ipip_entry->parms4) !=
		    FUNC7(new_parms)) ||
		   ipip_entry->parms4.link != new_parms.link) {
		update_tunnel = true;
	} else if (!FUNC9(&new_daddr, &old_daddr)) {
		update_nhs = true;
	} else if (FUNC6(ipip_entry->parms4) !=
		   FUNC6(new_parms)) {
		update_decap = true;
	}

	if (update_tunnel)
		err = FUNC0(mlxsw_sp, ipip_entry,
							  true, true, true,
							  extack);
	else if (update_nhs)
		err = FUNC0(mlxsw_sp, ipip_entry,
							  false, false, true,
							  extack);
	else if (update_decap)
		err = FUNC0(mlxsw_sp, ipip_entry,
							  false, false, false,
							  extack);

	ipip_entry->parms4 = new_parms;
	return err;
}