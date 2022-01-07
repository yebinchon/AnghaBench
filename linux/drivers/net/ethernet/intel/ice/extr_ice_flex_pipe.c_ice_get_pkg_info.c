
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef size_t u32 ;
typedef int u16 ;
struct TYPE_3__ {int draft; int update; int minor; int major; } ;
struct ice_hw {scalar_t__ active_pkg_in_nvm; int active_pkg_name; TYPE_1__ active_pkg_ver; } ;
struct ice_aqc_get_pkg_info_resp {TYPE_2__* pkg_info; int count; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_4__ {int name; TYPE_1__ ver; scalar_t__ is_in_nvm; scalar_t__ is_modified; scalar_t__ is_active_at_boot; scalar_t__ is_active; } ;


 int GFP_KERNEL ;
 int ICE_DBG_PKG ;
 int ICE_ERR_NO_MEMORY ;
 int ICE_PKG_CNT ;
 int ICE_PKG_FLAG_COUNT ;
 int ice_aq_get_pkg_info_list (struct ice_hw*,struct ice_aqc_get_pkg_info_resp*,int,int *) ;
 int ice_debug (struct ice_hw*,int ,char*,size_t,int ,int ,int ,int ,int ,char*) ;
 int kfree (struct ice_aqc_get_pkg_info_resp*) ;
 struct ice_aqc_get_pkg_info_resp* kzalloc (int,int ) ;
 size_t le32_to_cpu (int ) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static enum ice_status ice_get_pkg_info(struct ice_hw *hw)
{
 struct ice_aqc_get_pkg_info_resp *pkg_info;
 enum ice_status status;
 u16 size;
 u32 i;

 size = sizeof(*pkg_info) + (sizeof(pkg_info->pkg_info[0]) *
        (ICE_PKG_CNT - 1));
 pkg_info = kzalloc(size, GFP_KERNEL);
 if (!pkg_info)
  return ICE_ERR_NO_MEMORY;

 status = ice_aq_get_pkg_info_list(hw, pkg_info, size, ((void*)0));
 if (status)
  goto init_pkg_free_alloc;

 for (i = 0; i < le32_to_cpu(pkg_info->count); i++) {

  char flags[4 + 1] = { 0 };
  u8 place = 0;

  if (pkg_info->pkg_info[i].is_active) {
   flags[place++] = 'A';
   hw->active_pkg_ver = pkg_info->pkg_info[i].ver;
   memcpy(hw->active_pkg_name,
          pkg_info->pkg_info[i].name,
          sizeof(hw->active_pkg_name));
   hw->active_pkg_in_nvm = pkg_info->pkg_info[i].is_in_nvm;
  }
  if (pkg_info->pkg_info[i].is_active_at_boot)
   flags[place++] = 'B';
  if (pkg_info->pkg_info[i].is_modified)
   flags[place++] = 'M';
  if (pkg_info->pkg_info[i].is_in_nvm)
   flags[place++] = 'N';

  ice_debug(hw, ICE_DBG_PKG, "Pkg[%d]: %d.%d.%d.%d,%s,%s\n",
     i, pkg_info->pkg_info[i].ver.major,
     pkg_info->pkg_info[i].ver.minor,
     pkg_info->pkg_info[i].ver.update,
     pkg_info->pkg_info[i].ver.draft,
     pkg_info->pkg_info[i].name, flags);
 }

init_pkg_free_alloc:
 kfree(pkg_info);

 return status;
}
