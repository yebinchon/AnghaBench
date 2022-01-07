
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct bnx2x_dcbx_pg_params {int num_of_cos; TYPE_2__* cos_params; } ;
struct TYPE_3__ {struct bnx2x_dcbx_pg_params ets; } ;
struct bnx2x {int link_params; TYPE_1__ dcbx_port_params; } ;
struct TYPE_4__ {scalar_t__ strict; scalar_t__ bw_tbl; } ;


 scalar_t__ BNX2X_DCBX_STRICT_COS_HIGHEST ;
 scalar_t__ BNX2X_DCBX_STRICT_INVALID ;
 int BNX2X_ERR (char*,...) ;
 int DCBX_COS_MAX_NUM_E2 ;
 scalar_t__ DCBX_INVALID_COS_BW ;
 int bnx2x_ets_bw_limit (int *,int,int) ;
 int bnx2x_ets_strict (int *,int) ;

__attribute__((used)) static void bnx2x_dcbx_2cos_limit_update_ets_config(struct bnx2x *bp)
{
 struct bnx2x_dcbx_pg_params *ets = &(bp->dcbx_port_params.ets);
 int rc = 0;

 if (ets->num_of_cos == 0 || ets->num_of_cos > DCBX_COS_MAX_NUM_E2) {
  BNX2X_ERR("Illegal number of COSes %d\n", ets->num_of_cos);
  return;
 }


 if (ets->num_of_cos == 1)
  return;


 if (((BNX2X_DCBX_STRICT_INVALID == ets->cos_params[0].strict) &&
      (DCBX_INVALID_COS_BW == ets->cos_params[0].bw_tbl)) ||
     ((BNX2X_DCBX_STRICT_INVALID == ets->cos_params[1].strict) &&
      (DCBX_INVALID_COS_BW == ets->cos_params[1].bw_tbl))) {
  BNX2X_ERR("all COS should have at least bw_limit or strict"
       "ets->cos_params[0].strict= %x"
       "ets->cos_params[0].bw_tbl= %x"
       "ets->cos_params[1].strict= %x"
       "ets->cos_params[1].bw_tbl= %x",
     ets->cos_params[0].strict,
     ets->cos_params[0].bw_tbl,
     ets->cos_params[1].strict,
     ets->cos_params[1].bw_tbl);
  return;
 }

 if ((DCBX_INVALID_COS_BW != ets->cos_params[0].bw_tbl) &&
     (DCBX_INVALID_COS_BW != ets->cos_params[1].bw_tbl)) {
  u32 bw_tbl_0 = ets->cos_params[0].bw_tbl;
  u32 bw_tbl_1 = ets->cos_params[1].bw_tbl;




  if (bw_tbl_0 == 0) {
   bw_tbl_0 = 1;
   bw_tbl_1 = 99;
  } else if (bw_tbl_1 == 0) {
   bw_tbl_1 = 1;
   bw_tbl_0 = 99;
  }

  bnx2x_ets_bw_limit(&bp->link_params, bw_tbl_0, bw_tbl_1);
 } else {
  if (ets->cos_params[0].strict == BNX2X_DCBX_STRICT_COS_HIGHEST)
   rc = bnx2x_ets_strict(&bp->link_params, 0);
  else if (ets->cos_params[1].strict
     == BNX2X_DCBX_STRICT_COS_HIGHEST)
   rc = bnx2x_ets_strict(&bp->link_params, 1);
  if (rc)
   BNX2X_ERR("update_ets_params failed\n");
 }
}
