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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
typedef  enum mlxsw_reg_sfd_uc_tunnel_protocol { ____Placeholder_mlxsw_reg_sfd_uc_tunnel_protocol } mlxsw_reg_sfd_uc_tunnel_protocol ;
typedef  enum mlxsw_reg_sfd_rec_policy { ____Placeholder_mlxsw_reg_sfd_rec_policy } mlxsw_reg_sfd_rec_policy ;
typedef  enum mlxsw_reg_sfd_rec_action { ____Placeholder_mlxsw_reg_sfd_rec_action } mlxsw_reg_sfd_rec_action ;

/* Variables and functions */
 int /*<<< orphan*/  MLXSW_REG_SFD_REC_TYPE_UNICAST_TUNNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int) ; 

__attribute__((used)) static inline void
FUNC6(char *payload, int rec_index,
			     enum mlxsw_reg_sfd_rec_policy policy,
			     const char *mac, u16 fid,
			     enum mlxsw_reg_sfd_rec_action action, u32 uip,
			     enum mlxsw_reg_sfd_uc_tunnel_protocol proto)
{
	FUNC0(payload, rec_index,
			       MLXSW_REG_SFD_REC_TYPE_UNICAST_TUNNEL, mac,
			       action);
	FUNC1(payload, rec_index, policy);
	FUNC5(payload, rec_index, uip >> 24);
	FUNC4(payload, rec_index, uip);
	FUNC2(payload, rec_index, fid);
	FUNC3(payload, rec_index, proto);
}