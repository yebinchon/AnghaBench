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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int /*<<< orphan*/  addr4; } ;
struct mlxsw_sp_rif_ipip_lb_config {int ul_protocol; int /*<<< orphan*/  okey; int /*<<< orphan*/  lb_ipipt; TYPE_1__ saddr; } ;
struct mlxsw_sp_rif {TYPE_2__* dev; int /*<<< orphan*/  vr_id; int /*<<< orphan*/  rif_index; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp_rif_ipip_lb {struct mlxsw_sp_rif common; struct mlxsw_sp_rif_ipip_lb_config lb_config; } ;
struct mlxsw_sp {int /*<<< orphan*/  core; } ;
struct TYPE_4__ {int /*<<< orphan*/  mtu; } ;

/* Variables and functions */
 int EAFNOSUPPORT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MLXSW_REG_RITR_LEN ; 
 int /*<<< orphan*/  MLXSW_REG_RITR_LOOPBACK_IF ; 
 int /*<<< orphan*/  MLXSW_REG_RITR_LOOPBACK_IPIP_OPTIONS_GRE_KEY_PRESET ; 
#define  MLXSW_SP_L3_PROTO_IPV4 129 
#define  MLXSW_SP_L3_PROTO_IPV6 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ritr ; 

__attribute__((used)) static int
FUNC5(struct mlxsw_sp_rif_ipip_lb *lb_rif, u16 ul_vr_id,
			u16 ul_rif_id, bool enable)
{
	struct mlxsw_sp_rif_ipip_lb_config lb_cf = lb_rif->lb_config;
	struct mlxsw_sp_rif *rif = &lb_rif->common;
	struct mlxsw_sp *mlxsw_sp = rif->mlxsw_sp;
	char ritr_pl[MLXSW_REG_RITR_LEN];
	u32 saddr4;

	switch (lb_cf.ul_protocol) {
	case MLXSW_SP_L3_PROTO_IPV4:
		saddr4 = FUNC1(lb_cf.saddr.addr4);
		FUNC3(ritr_pl, enable, MLXSW_REG_RITR_LOOPBACK_IF,
				    rif->rif_index, rif->vr_id, rif->dev->mtu);
		FUNC2(ritr_pl, lb_cf.lb_ipipt,
			    MLXSW_REG_RITR_LOOPBACK_IPIP_OPTIONS_GRE_KEY_PRESET,
			    ul_vr_id, ul_rif_id, saddr4, lb_cf.okey);
		break;

	case MLXSW_SP_L3_PROTO_IPV6:
		return -EAFNOSUPPORT;
	}

	return FUNC4(mlxsw_sp->core, FUNC0(ritr), ritr_pl);
}