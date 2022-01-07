
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {int sq_last_status; } ;
struct ice_hw {TYPE_2__ adminq; int pkg_dwnld_status; } ;
struct ice_buf_hdr {TYPE_1__* section_entry; int section_count; } ;
struct ice_buf {int dummy; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;
struct TYPE_3__ {int type; } ;


 int ICE_AQ_RC_EEXIST ;
 int ICE_AQ_RC_OK ;
 int ICE_DBG_PKG ;
 int ICE_ERR_AQ_NO_WORK ;
 int ICE_ERR_PARAM ;
 int ICE_METADATA_BUF ;
 int ICE_PKG_BUF_SIZE ;
 int ICE_RES_WRITE ;
 int ice_acquire_global_cfg_lock (struct ice_hw*,int ) ;
 int ice_aq_download_pkg (struct ice_hw*,struct ice_buf_hdr*,int ,int,scalar_t__*,scalar_t__*,int *) ;
 int ice_debug (struct ice_hw*,int ,char*,int,scalar_t__,scalar_t__) ;
 int ice_release_global_cfg_lock (struct ice_hw*) ;
 scalar_t__ le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static enum ice_status
ice_dwnld_cfg_bufs(struct ice_hw *hw, struct ice_buf *bufs, u32 count)
{
 enum ice_status status;
 struct ice_buf_hdr *bh;
 u32 offset, info, i;

 if (!bufs || !count)
  return ICE_ERR_PARAM;





 bh = (struct ice_buf_hdr *)bufs;
 if (le32_to_cpu(bh->section_entry[0].type) & ICE_METADATA_BUF)
  return 0;




 hw->pkg_dwnld_status = ICE_AQ_RC_OK;

 status = ice_acquire_global_cfg_lock(hw, ICE_RES_WRITE);
 if (status) {
  if (status == ICE_ERR_AQ_NO_WORK)
   hw->pkg_dwnld_status = ICE_AQ_RC_EEXIST;
  else
   hw->pkg_dwnld_status = hw->adminq.sq_last_status;
  return status;
 }

 for (i = 0; i < count; i++) {
  bool last = ((i + 1) == count);

  if (!last) {

   bh = (struct ice_buf_hdr *)(bufs + i + 1);





   if (le16_to_cpu(bh->section_count))
    if (le32_to_cpu(bh->section_entry[0].type) &
        ICE_METADATA_BUF)
     last = 1;
  }

  bh = (struct ice_buf_hdr *)(bufs + i);

  status = ice_aq_download_pkg(hw, bh, ICE_PKG_BUF_SIZE, last,
          &offset, &info, ((void*)0));


  hw->pkg_dwnld_status = hw->adminq.sq_last_status;
  if (status) {
   ice_debug(hw, ICE_DBG_PKG,
      "Pkg download failed: err %d off %d inf %d\n",
      status, offset, info);

   break;
  }

  if (last)
   break;
 }

 ice_release_global_cfg_lock(hw);

 return status;
}
