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
union mlxsw_sp_l3addr {int /*<<< orphan*/  addr4; } ;
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
typedef  enum mlxsw_sp_l3proto { ____Placeholder_mlxsw_sp_l3proto } mlxsw_sp_l3proto ;
typedef  enum mlxsw_reg_sfd_uc_tunnel_protocol { ____Placeholder_mlxsw_reg_sfd_uc_tunnel_protocol } mlxsw_reg_sfd_uc_tunnel_protocol ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MLXSW_REG_SFD_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_SFD_REC_ACTION_NOP ; 
 int MLXSW_REG_SFD_UC_TUNNEL_PROTOCOL_IPV4 ; 
#define  MLXSW_SP_L3_PROTO_IPV4 129 
#define  MLXSW_SP_L3_PROTO_IPV6 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  sfd ; 

__attribute__((used)) static int FUNC11(struct mlxsw_sp *mlxsw_sp,
					  const char *mac, u16 fid,
					  enum mlxsw_sp_l3proto proto,
					  const union mlxsw_sp_l3addr *addr,
					  bool adding, bool dynamic)
{
	enum mlxsw_reg_sfd_uc_tunnel_protocol sfd_proto;
	char *sfd_pl;
	u8 num_rec;
	u32 uip;
	int err;

	switch (proto) {
	case MLXSW_SP_L3_PROTO_IPV4:
		uip = FUNC2(addr->addr4);
		sfd_proto = MLXSW_REG_SFD_UC_TUNNEL_PROTOCOL_IPV4;
		break;
	case MLXSW_SP_L3_PROTO_IPV6: /* fall through */
	default:
		FUNC1(1);
		return -EOPNOTSUPP;
	}

	sfd_pl = FUNC4(MLXSW_REG_SFD_LEN, GFP_KERNEL);
	if (!sfd_pl)
		return -ENOMEM;

	FUNC6(sfd_pl, FUNC9(adding), 0);
	FUNC7(sfd_pl, 0,
				     FUNC10(dynamic), mac, fid,
				     MLXSW_REG_SFD_REC_ACTION_NOP, uip,
				     sfd_proto);
	num_rec = FUNC5(sfd_pl);
	err = FUNC8(mlxsw_sp->core, FUNC0(sfd), sfd_pl);
	if (err)
		goto out;

	if (num_rec != FUNC5(sfd_pl))
		err = -EBUSY;

out:
	FUNC3(sfd_pl);
	return err;
}