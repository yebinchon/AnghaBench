
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cudbg_tcam {int tid_hash_base; int routing_start; int clip_start; int filter_start; int server_start; int max_tid; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int ASLIPCOMPEN_F ;
 scalar_t__ CHELSIO_CHIP_VERSION (int ) ;
 scalar_t__ CHELSIO_T5 ;
 int CUDBG_MAX_TCAM_TID ;
 int CUDBG_MAX_TID_COMP_DIS ;
 int CUDBG_MAX_TID_COMP_EN ;
 int CUDBG_T6_CLIP ;
 int HASHEN_S ;
 int HASHTIDSIZE_G (int) ;
 int LE_DB_CLCAM_TID_BASE_A ;
 int LE_DB_CLIP_TABLE_INDEX_A ;
 int LE_DB_CONFIG_A ;
 int LE_DB_FILTER_TABLE_INDEX_A ;
 int LE_DB_HASH_CONFIG_A ;
 int LE_DB_ROUTING_TABLE_INDEX_A ;
 int LE_DB_SERVER_INDEX_A ;
 int LE_DB_TID_HASHBASE_A ;
 scalar_t__ is_t6 (int ) ;
 int t4_read_reg (struct adapter*,int ) ;

void cudbg_fill_le_tcam_info(struct adapter *padap,
        struct cudbg_tcam *tcam_region)
{
 u32 value;


 value = t4_read_reg(padap, LE_DB_TID_HASHBASE_A);
 tcam_region->tid_hash_base = value;


 value = t4_read_reg(padap, LE_DB_ROUTING_TABLE_INDEX_A);
 tcam_region->routing_start = value;


 if (is_t6(padap->params.chip))
  value = t4_read_reg(padap, LE_DB_CLCAM_TID_BASE_A);
 else
  value = t4_read_reg(padap, LE_DB_CLIP_TABLE_INDEX_A);
 tcam_region->clip_start = value;


 value = t4_read_reg(padap, LE_DB_FILTER_TABLE_INDEX_A);
 tcam_region->filter_start = value;


 value = t4_read_reg(padap, LE_DB_SERVER_INDEX_A);
 tcam_region->server_start = value;


 value = t4_read_reg(padap, LE_DB_CONFIG_A);
 if ((value >> HASHEN_S) & 1) {
  value = t4_read_reg(padap, LE_DB_HASH_CONFIG_A);
  if (CHELSIO_CHIP_VERSION(padap->params.chip) > CHELSIO_T5) {
   tcam_region->max_tid = (value & 0xFFFFF) +
            tcam_region->tid_hash_base;
  } else {
   value = HASHTIDSIZE_G(value);
   value = 1 << value;
   tcam_region->max_tid = value +
            tcam_region->tid_hash_base;
  }
 } else {
  if (is_t6(padap->params.chip))
   tcam_region->max_tid = (value & ASLIPCOMPEN_F) ?
            CUDBG_MAX_TID_COMP_EN :
            CUDBG_MAX_TID_COMP_DIS;
  else
   tcam_region->max_tid = CUDBG_MAX_TCAM_TID;
 }

 if (is_t6(padap->params.chip))
  tcam_region->max_tid += CUDBG_T6_CLIP;
}
