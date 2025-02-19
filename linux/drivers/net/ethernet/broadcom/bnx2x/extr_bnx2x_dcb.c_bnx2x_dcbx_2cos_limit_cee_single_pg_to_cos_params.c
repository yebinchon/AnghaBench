
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pg_help_data {TYPE_1__* data; } ;
struct cos_help_data {TYPE_4__* data; } ;
struct TYPE_6__ {int* traffic_type_priority; } ;
struct TYPE_7__ {TYPE_2__ app; } ;
struct bnx2x {TYPE_3__ dcbx_port_params; } ;
struct TYPE_8__ {int pausable; int cos_bw; int pri_join_mask; void* strict; } ;
struct TYPE_5__ {scalar_t__ pg; } ;


 void* BNX2X_DCBX_STRICT_COS_HIGHEST ;
 void* BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI (void*) ;
 int BNX2X_ERR (char*) ;
 scalar_t__ DCBX_MAX_NUM_PG_BW_ENTRIES ;
 scalar_t__ DCBX_PFC_PRI_GET_NON_PAUSE (struct bnx2x*,int) ;
 scalar_t__ DCBX_PFC_PRI_GET_PAUSE (struct bnx2x*,int) ;
 scalar_t__ IS_DCBX_PFC_PRI_MIX_PAUSE (struct bnx2x*,int) ;
 int IS_DCBX_PFC_PRI_ONLY_PAUSE (struct bnx2x*,int) ;
 int LLFC_DRIVER_TRAFFIC_TYPE_MAX ;
 size_t LLFC_TRAFFIC_TYPE_FCOE ;
 scalar_t__ POWER_OF_2 (scalar_t__) ;
 int bnx2x_dcbx_ets_disabled_entry_data (struct bnx2x*,struct cos_help_data*,int) ;

__attribute__((used)) static void bnx2x_dcbx_2cos_limit_cee_single_pg_to_cos_params(struct bnx2x *bp,
           struct pg_help_data *pg_help_data,
           struct cos_help_data *cos_data,
           u32 pri_join_mask,
           u8 num_of_dif_pri)
{
 u8 i = 0;
 u32 pri_tested = 0;
 u32 pri_mask_without_pri = 0;
 u32 *ttp = bp->dcbx_port_params.app.traffic_type_priority;

 if (num_of_dif_pri == 1) {
  bnx2x_dcbx_ets_disabled_entry_data(bp, cos_data, pri_join_mask);
  return;
 }

 if (pg_help_data->data[0].pg < DCBX_MAX_NUM_PG_BW_ENTRIES) {




  if (IS_DCBX_PFC_PRI_MIX_PAUSE(bp, pri_join_mask)) {

   cos_data->data[0].pausable = 1;

   cos_data->data[1].pausable = 0;

   if (2 == num_of_dif_pri) {
    cos_data->data[0].cos_bw = 50;
    cos_data->data[1].cos_bw = 50;
   }

   if (3 == num_of_dif_pri) {
    if (POWER_OF_2(DCBX_PFC_PRI_GET_PAUSE(bp,
       pri_join_mask))) {
     cos_data->data[0].cos_bw = 33;
     cos_data->data[1].cos_bw = 67;
    } else {
     cos_data->data[0].cos_bw = 67;
     cos_data->data[1].cos_bw = 33;
    }
   }

  } else if (IS_DCBX_PFC_PRI_ONLY_PAUSE(bp, pri_join_mask)) {




   if (2 == num_of_dif_pri) {
    cos_data->data[0].cos_bw = 50;
    cos_data->data[1].cos_bw = 50;
   } else {
    cos_data->data[0].cos_bw = 67;
    cos_data->data[1].cos_bw = 33;
   }
   cos_data->data[1].pausable = 1;
   cos_data->data[0].pausable = 1;

   cos_data->data[0].pri_join_mask = (pri_join_mask &
    ((u8)~(1 << ttp[LLFC_TRAFFIC_TYPE_FCOE])));

   cos_data->data[1].pri_join_mask =
    (1 << ttp[LLFC_TRAFFIC_TYPE_FCOE]);
  } else



   bnx2x_dcbx_ets_disabled_entry_data(bp,
      cos_data, pri_join_mask);
 } else {

  if (IS_DCBX_PFC_PRI_MIX_PAUSE(bp, pri_join_mask)) {





   if (DCBX_PFC_PRI_GET_PAUSE(bp, pri_join_mask) >
       DCBX_PFC_PRI_GET_NON_PAUSE(bp, pri_join_mask)) {
    cos_data->data[0].strict =
     BNX2X_DCBX_STRICT_COS_HIGHEST;
    cos_data->data[1].strict =
     BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(
      BNX2X_DCBX_STRICT_COS_HIGHEST);
   } else {
    cos_data->data[0].strict =
     BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(
      BNX2X_DCBX_STRICT_COS_HIGHEST);
    cos_data->data[1].strict =
     BNX2X_DCBX_STRICT_COS_HIGHEST;
   }

   cos_data->data[0].pausable = 1;

   cos_data->data[1].pausable = 0;
  } else {





   cos_data->data[0].pausable =
    cos_data->data[1].pausable =
    IS_DCBX_PFC_PRI_ONLY_PAUSE(bp, pri_join_mask);

   for (i = 0 ; i < LLFC_DRIVER_TRAFFIC_TYPE_MAX; i++) {
    pri_tested = 1 << bp->dcbx_port_params.
     app.traffic_type_priority[i];

    pri_mask_without_pri =
     (pri_join_mask & ((u8)(~pri_tested)));
    if (pri_mask_without_pri < pri_tested)
     break;
   }

   if (i == LLFC_DRIVER_TRAFFIC_TYPE_MAX)
    BNX2X_ERR("Invalid value for pri_join_mask - could not find a priority\n");

   cos_data->data[0].pri_join_mask = pri_mask_without_pri;
   cos_data->data[1].pri_join_mask = pri_tested;




   cos_data->data[0].strict =
     BNX2X_DCBX_STRICT_COS_NEXT_LOWER_PRI(
      BNX2X_DCBX_STRICT_COS_HIGHEST);
   cos_data->data[1].strict =
     BNX2X_DCBX_STRICT_COS_HIGHEST;
  }
 }
}
