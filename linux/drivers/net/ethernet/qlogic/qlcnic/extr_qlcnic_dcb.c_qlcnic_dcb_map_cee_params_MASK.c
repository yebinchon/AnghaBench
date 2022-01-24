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
typedef  size_t u8 ;
struct qlcnic_dcb_tc_cfg {int dummy; } ;
struct qlcnic_dcb_pg_cfg {int dummy; } ;
struct qlcnic_dcb_param {int /*<<< orphan*/ * hdr_prio_pfc_map; } ;
struct qlcnic_dcb_mbx_params {struct qlcnic_dcb_param* type; } ;
struct TYPE_4__ {scalar_t__ max_ets_tc; scalar_t__ max_pfc_tc; } ;
struct qlcnic_dcb_cfg {TYPE_2__ capability; struct qlcnic_dcb_cee* type; } ;
struct qlcnic_dcb_cee {int tc_param_valid; int pfc_mode_enable; int /*<<< orphan*/  pg_cfg; int /*<<< orphan*/  tc_cfg; } ;
struct qlcnic_adapter {TYPE_1__* dcb; } ;
struct TYPE_3__ {struct qlcnic_dcb_cfg* cfg; struct qlcnic_dcb_mbx_params* param; } ;

/* Variables and functions */
 int QLC_DCB_MAX_TC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qlcnic_adapter*,size_t,struct qlcnic_dcb_param*,struct qlcnic_dcb_cee*) ; 
 int /*<<< orphan*/  FUNC2 (struct qlcnic_dcb_param*,struct qlcnic_dcb_cee*) ; 
 int /*<<< orphan*/  FUNC3 (struct qlcnic_dcb_mbx_params*,struct qlcnic_dcb_param*,struct qlcnic_dcb_cee*) ; 
 scalar_t__ FUNC4 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct qlcnic_adapter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct qlcnic_adapter *adapter, u8 idx)
{
	struct qlcnic_dcb_mbx_params *mbx = adapter->dcb->param;
	struct qlcnic_dcb_param *each = &mbx->type[idx];
	struct qlcnic_dcb_cfg *cfg = adapter->dcb->cfg;
	struct qlcnic_dcb_cee *type = &cfg->type[idx];

	type->tc_param_valid = false;
	type->pfc_mode_enable = false;
	FUNC0(type->tc_cfg, 0,
	       sizeof(struct qlcnic_dcb_tc_cfg) * QLC_DCB_MAX_TC);
	FUNC0(type->pg_cfg, 0,
	       sizeof(struct qlcnic_dcb_pg_cfg) * QLC_DCB_MAX_TC);

	if (FUNC4(adapter, each->hdr_prio_pfc_map[0]) &&
	    cfg->capability.max_pfc_tc)
		type->pfc_mode_enable = true;

	if (FUNC5(adapter, each->hdr_prio_pfc_map[0]) &&
	    cfg->capability.max_ets_tc)
		type->tc_param_valid = true;

	FUNC3(mbx, each, type);
	FUNC2(each, type);
	FUNC1(adapter, idx, each, type);
}