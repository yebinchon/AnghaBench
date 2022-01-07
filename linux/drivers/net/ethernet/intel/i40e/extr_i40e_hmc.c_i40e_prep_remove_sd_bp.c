
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_6__ {scalar_t__ ref_cnt; } ;
struct TYPE_4__ {TYPE_3__ bp; } ;
struct i40e_hmc_sd_entry {int valid; TYPE_1__ u; } ;
struct TYPE_5__ {struct i40e_hmc_sd_entry* sd_entry; } ;
struct i40e_hmc_info {TYPE_2__ sd_table; } ;
typedef int i40e_status ;


 int I40E_DEC_BP_REFCNT (TYPE_3__*) ;
 int I40E_DEC_SD_REFCNT (TYPE_2__*) ;
 int I40E_ERR_NOT_READY ;

i40e_status i40e_prep_remove_sd_bp(struct i40e_hmc_info *hmc_info,
          u32 idx)
{
 i40e_status ret_code = 0;
 struct i40e_hmc_sd_entry *sd_entry;


 sd_entry = &hmc_info->sd_table.sd_entry[idx];
 I40E_DEC_BP_REFCNT(&sd_entry->u.bp);
 if (sd_entry->u.bp.ref_cnt) {
  ret_code = I40E_ERR_NOT_READY;
  goto exit;
 }
 I40E_DEC_SD_REFCNT(&hmc_info->sd_table);


 sd_entry->valid = 0;
exit:
 return ret_code;
}
