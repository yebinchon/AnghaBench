
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
typedef size_t u32 ;
struct pg_help_data {size_t num_of_pg; struct pg_entry_help_data* data; } ;
struct pg_entry_help_data {size_t pg; int pg_priority; int num_of_dif_pri; } ;
struct TYPE_3__ {size_t* traffic_type_priority; } ;
struct TYPE_4__ {TYPE_1__ app; } ;
struct bnx2x {TYPE_2__ dcbx_port_params; } ;


 int BNX2X_MSG_DCB ;
 size_t DCBX_ILLEGAL_PG ;
 int DP (int ,char*,size_t,char*,size_t) ;
 size_t LLFC_DRIVER_TRAFFIC_TYPE_MAX ;
 size_t MAX_PFC_PRIORITIES ;

__attribute__((used)) static void bnx2x_dcbx_get_num_pg_traf_type(struct bnx2x *bp,
         u32 *pg_pri_orginal_spread,
         struct pg_help_data *help_data)
{
 bool pg_found = 0;
 u32 i, traf_type, add_traf_type, add_pg;
 u32 *ttp = bp->dcbx_port_params.app.traffic_type_priority;
 struct pg_entry_help_data *data = help_data->data;


 for (i = 0; i < LLFC_DRIVER_TRAFFIC_TYPE_MAX; i++)
  data[i].pg = DCBX_ILLEGAL_PG;

 for (add_traf_type = 0;
      add_traf_type < LLFC_DRIVER_TRAFFIC_TYPE_MAX; add_traf_type++) {
  pg_found = 0;
  if (ttp[add_traf_type] < MAX_PFC_PRIORITIES) {
   add_pg = (u8)pg_pri_orginal_spread[ttp[add_traf_type]];
   for (traf_type = 0;
        traf_type < LLFC_DRIVER_TRAFFIC_TYPE_MAX;
        traf_type++) {
    if (data[traf_type].pg == add_pg) {
     if (!(data[traf_type].pg_priority &
          (1 << ttp[add_traf_type])))
      data[traf_type].
       num_of_dif_pri++;
     data[traf_type].pg_priority |=
      (1 << ttp[add_traf_type]);
     pg_found = 1;
     break;
    }
   }
   if (0 == pg_found) {
    data[help_data->num_of_pg].pg = add_pg;
    data[help_data->num_of_pg].pg_priority =
      (1 << ttp[add_traf_type]);
    data[help_data->num_of_pg].num_of_dif_pri = 1;
    help_data->num_of_pg++;
   }
  }
  DP(BNX2X_MSG_DCB,
     "add_traf_type %d pg_found %s num_of_pg %d\n",
     add_traf_type, (0 == pg_found) ? "NO" : "YES",
     help_data->num_of_pg);
 }
}
