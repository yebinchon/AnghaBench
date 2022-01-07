
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct qlcnic_dcb_tc_cfg {int valid; size_t pgid; int prio_type; TYPE_1__* prio_cfg; int up_tc_map; } ;
struct qlcnic_dcb_param {int * prio_pg_map; int * hdr_prio_pfc_map; } ;
struct qlcnic_dcb_mbx_params {int prio_tc_map; } ;
struct qlcnic_dcb_cee {TYPE_2__* pg_cfg; scalar_t__ pfc_mode_enable; struct qlcnic_dcb_tc_cfg* tc_cfg; } ;
struct TYPE_4__ {int prio_count; } ;
struct TYPE_3__ {int valid; int pfc_type; } ;


 int QLC_DCB_GET_MAP (size_t) ;
 scalar_t__ QLC_DCB_GET_PFC_PRIO (int ,size_t) ;
 size_t QLC_DCB_GET_PGID_PRIO (int ,size_t) ;
 size_t QLC_DCB_GET_TC_PRIO (int ,size_t) ;
 size_t QLC_DCB_MAX_PRIO ;
 int QLC_PFC_FULL ;
 int QLC_PRIO_LINK ;

__attribute__((used)) static void qlcnic_dcb_fill_cee_tc_params(struct qlcnic_dcb_mbx_params *mbx,
       struct qlcnic_dcb_param *each,
       struct qlcnic_dcb_cee *type)
{
 struct qlcnic_dcb_tc_cfg *tc_cfg;
 u8 i, tc, pgid;

 for (i = 0; i < QLC_DCB_MAX_PRIO; i++) {
  tc = QLC_DCB_GET_TC_PRIO(mbx->prio_tc_map, i);
  tc_cfg = &type->tc_cfg[tc];
  tc_cfg->valid = 1;
  tc_cfg->up_tc_map |= QLC_DCB_GET_MAP(i);

  if (QLC_DCB_GET_PFC_PRIO(each->hdr_prio_pfc_map[1], i) &&
      type->pfc_mode_enable) {
   tc_cfg->prio_cfg[i].valid = 1;
   tc_cfg->prio_cfg[i].pfc_type = QLC_PFC_FULL;
  }

  if (i < 4)
   pgid = QLC_DCB_GET_PGID_PRIO(each->prio_pg_map[0], i);
  else
   pgid = QLC_DCB_GET_PGID_PRIO(each->prio_pg_map[1], i);

  tc_cfg->pgid = pgid;

  tc_cfg->prio_type = QLC_PRIO_LINK;
  type->pg_cfg[tc_cfg->pgid].prio_count++;
 }
}
