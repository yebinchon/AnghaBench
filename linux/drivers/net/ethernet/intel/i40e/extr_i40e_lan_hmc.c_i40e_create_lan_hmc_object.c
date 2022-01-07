
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct i40e_hw {int dummy; } ;
struct TYPE_18__ {int pa; } ;
struct TYPE_19__ {TYPE_4__ addr; } ;
struct TYPE_16__ {int pa; } ;
struct TYPE_17__ {TYPE_2__ pd_page_addr; } ;
struct TYPE_20__ {TYPE_5__ bp; TYPE_3__ pd_table; } ;
struct i40e_hmc_sd_entry {int entry_type; int valid; TYPE_6__ u; } ;
struct i40e_hmc_lan_create_obj_info {scalar_t__ start_idx; size_t rsrc_type; scalar_t__ count; scalar_t__ direct_mode_sz; TYPE_8__* hmc_info; int entry_type; } ;
typedef scalar_t__ i40e_status ;
struct TYPE_21__ {scalar_t__ sd_cnt; struct i40e_hmc_sd_entry* sd_entry; } ;
struct TYPE_22__ {scalar_t__ signature; TYPE_7__ sd_table; TYPE_1__* hmc_obj; } ;
struct TYPE_15__ {scalar_t__ cnt; } ;


 scalar_t__ I40E_ERR_BAD_PTR ;
 scalar_t__ I40E_ERR_INVALID_HMC_OBJ_COUNT ;
 scalar_t__ I40E_ERR_INVALID_HMC_OBJ_INDEX ;
 scalar_t__ I40E_ERR_INVALID_SD_INDEX ;
 scalar_t__ I40E_ERR_INVALID_SD_TYPE ;
 int I40E_FIND_PD_INDEX_LIMIT (TYPE_8__*,size_t,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 int I40E_FIND_SD_INDEX_LIMIT (TYPE_8__*,size_t,scalar_t__,scalar_t__,scalar_t__*,scalar_t__*) ;
 scalar_t__ I40E_HMC_DIRECT_BP_SIZE ;
 scalar_t__ I40E_HMC_INFO_SIGNATURE ;
 scalar_t__ I40E_HMC_MAX_BP_COUNT ;


 int I40E_SET_PF_SD_ENTRY (struct i40e_hw*,int ,scalar_t__,int) ;
 int hw_dbg (struct i40e_hw*,char*,...) ;
 scalar_t__ i40e_add_pd_table_entry (struct i40e_hw*,TYPE_8__*,scalar_t__,int *) ;
 scalar_t__ i40e_add_sd_table_entry (struct i40e_hw*,TYPE_8__*,scalar_t__,int ,scalar_t__) ;
 int i40e_remove_pd_bp (struct i40e_hw*,TYPE_8__*,scalar_t__) ;
 int i40e_remove_pd_page (struct i40e_hw*,TYPE_8__*,scalar_t__) ;
 int i40e_remove_sd_bp (struct i40e_hw*,TYPE_8__*,scalar_t__) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static i40e_status i40e_create_lan_hmc_object(struct i40e_hw *hw,
    struct i40e_hmc_lan_create_obj_info *info)
{
 i40e_status ret_code = 0;
 struct i40e_hmc_sd_entry *sd_entry;
 u32 pd_idx1 = 0, pd_lmt1 = 0;
 u32 pd_idx = 0, pd_lmt = 0;
 bool pd_error = 0;
 u32 sd_idx, sd_lmt;
 u64 sd_size;
 u32 i, j;

 if (((void*)0) == info) {
  ret_code = I40E_ERR_BAD_PTR;
  hw_dbg(hw, "i40e_create_lan_hmc_object: bad info ptr\n");
  goto exit;
 }
 if (((void*)0) == info->hmc_info) {
  ret_code = I40E_ERR_BAD_PTR;
  hw_dbg(hw, "i40e_create_lan_hmc_object: bad hmc_info ptr\n");
  goto exit;
 }
 if (I40E_HMC_INFO_SIGNATURE != info->hmc_info->signature) {
  ret_code = I40E_ERR_BAD_PTR;
  hw_dbg(hw, "i40e_create_lan_hmc_object: bad signature\n");
  goto exit;
 }

 if (info->start_idx >= info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
  ret_code = I40E_ERR_INVALID_HMC_OBJ_INDEX;
  hw_dbg(hw, "i40e_create_lan_hmc_object: returns error %d\n",
     ret_code);
  goto exit;
 }
 if ((info->start_idx + info->count) >
     info->hmc_info->hmc_obj[info->rsrc_type].cnt) {
  ret_code = I40E_ERR_INVALID_HMC_OBJ_COUNT;
  hw_dbg(hw, "i40e_create_lan_hmc_object: returns error %d\n",
     ret_code);
  goto exit;
 }


 I40E_FIND_SD_INDEX_LIMIT(info->hmc_info, info->rsrc_type,
     info->start_idx, info->count,
     &sd_idx, &sd_lmt);
 if (sd_idx >= info->hmc_info->sd_table.sd_cnt ||
     sd_lmt > info->hmc_info->sd_table.sd_cnt) {
   ret_code = I40E_ERR_INVALID_SD_INDEX;
   goto exit;
 }

 I40E_FIND_PD_INDEX_LIMIT(info->hmc_info, info->rsrc_type,
     info->start_idx, info->count, &pd_idx,
     &pd_lmt);





 if (info->direct_mode_sz == 0)
  sd_size = I40E_HMC_DIRECT_BP_SIZE;
 else
  sd_size = info->direct_mode_sz;




 for (j = sd_idx; j < sd_lmt; j++) {

  ret_code = i40e_add_sd_table_entry(hw, info->hmc_info, j,
         info->entry_type,
         sd_size);
  if (ret_code)
   goto exit_sd_error;
  sd_entry = &info->hmc_info->sd_table.sd_entry[j];
  if (128 == sd_entry->entry_type) {





   pd_idx1 = max(pd_idx, (j * I40E_HMC_MAX_BP_COUNT));
   pd_lmt1 = min(pd_lmt,
          ((j + 1) * I40E_HMC_MAX_BP_COUNT));
   for (i = pd_idx1; i < pd_lmt1; i++) {

    ret_code = i40e_add_pd_table_entry(hw,
        info->hmc_info,
        i, ((void*)0));
    if (ret_code) {
     pd_error = 1;
     break;
    }
   }
   if (pd_error) {

    while (i && (i > pd_idx1)) {
     i40e_remove_pd_bp(hw, info->hmc_info,
         (i - 1));
     i--;
    }
   }
  }
  if (!sd_entry->valid) {
   sd_entry->valid = 1;
   switch (sd_entry->entry_type) {
   case 128:
    I40E_SET_PF_SD_ENTRY(hw,
     sd_entry->u.pd_table.pd_page_addr.pa,
     j, sd_entry->entry_type);
    break;
   case 129:
    I40E_SET_PF_SD_ENTRY(hw, sd_entry->u.bp.addr.pa,
           j, sd_entry->entry_type);
    break;
   default:
    ret_code = I40E_ERR_INVALID_SD_TYPE;
    goto exit;
   }
  }
 }
 goto exit;

exit_sd_error:

 while (j && (j > sd_idx)) {
  sd_entry = &info->hmc_info->sd_table.sd_entry[j - 1];
  switch (sd_entry->entry_type) {
  case 128:
   pd_idx1 = max(pd_idx,
          ((j - 1) * I40E_HMC_MAX_BP_COUNT));
   pd_lmt1 = min(pd_lmt, (j * I40E_HMC_MAX_BP_COUNT));
   for (i = pd_idx1; i < pd_lmt1; i++)
    i40e_remove_pd_bp(hw, info->hmc_info, i);
   i40e_remove_pd_page(hw, info->hmc_info, (j - 1));
   break;
  case 129:
   i40e_remove_sd_bp(hw, info->hmc_info, (j - 1));
   break;
  default:
   ret_code = I40E_ERR_INVALID_SD_TYPE;
   break;
  }
  j--;
 }
exit:
 return ret_code;
}
