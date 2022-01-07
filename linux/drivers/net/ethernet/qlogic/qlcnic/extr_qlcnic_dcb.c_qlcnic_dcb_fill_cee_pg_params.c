
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct qlcnic_dcb_pg_cfg {int valid; size_t total_bw_percent; size_t tsa_type; } ;
struct qlcnic_dcb_param {int * pg_tsa_map; int * pg_bw_map; } ;
struct qlcnic_dcb_cee {struct qlcnic_dcb_pg_cfg* pg_cfg; } ;


 size_t QLC_DCB_GET_BWPER_PG (int ,size_t) ;
 size_t QLC_DCB_GET_TSA_PG (int ,size_t) ;
 size_t QLC_DCB_MAX_PG ;

__attribute__((used)) static void qlcnic_dcb_fill_cee_pg_params(struct qlcnic_dcb_param *each,
       struct qlcnic_dcb_cee *type)
{
 struct qlcnic_dcb_pg_cfg *pg_cfg;
 u8 i, tsa, bw_per;

 for (i = 0; i < QLC_DCB_MAX_PG; i++) {
  pg_cfg = &type->pg_cfg[i];
  pg_cfg->valid = 1;

  if (i < 4) {
   bw_per = QLC_DCB_GET_BWPER_PG(each->pg_bw_map[0], i);
   tsa = QLC_DCB_GET_TSA_PG(each->pg_tsa_map[0], i);
  } else {
   bw_per = QLC_DCB_GET_BWPER_PG(each->pg_bw_map[1], i);
   tsa = QLC_DCB_GET_TSA_PG(each->pg_tsa_map[1], i);
  }

  pg_cfg->total_bw_percent = bw_per;
  pg_cfg->tsa_type = tsa;
 }
}
