
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct ice_seg {int dummy; } ;
struct ice_pkg_hdr {int dummy; } ;
struct ice_hw {struct ice_seg* seg; int active_pkg_ver; int pkg_ver; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_DBG_INIT ;
 int ICE_ERR_AQ_NO_WORK ;
 int ICE_ERR_CFG ;
 int ICE_ERR_PARAM ;
 int SEGMENT_TYPE_ICE ;
 int ice_chk_pkg_version (int *) ;
 int ice_debug (struct ice_hw*,int ,char*,...) ;
 int ice_download_pkg (struct ice_hw*,struct ice_seg*) ;
 int ice_fill_blk_tbls (struct ice_hw*) ;
 scalar_t__ ice_find_seg_in_pkg (struct ice_hw*,int ,struct ice_pkg_hdr*) ;
 int ice_get_pkg_info (struct ice_hw*) ;
 int ice_init_pkg_info (struct ice_hw*,struct ice_pkg_hdr*) ;
 int ice_init_pkg_regs (struct ice_hw*) ;
 int ice_verify_pkg (struct ice_pkg_hdr*,int ) ;

enum ice_status ice_init_pkg(struct ice_hw *hw, u8 *buf, u32 len)
{
 struct ice_pkg_hdr *pkg;
 enum ice_status status;
 struct ice_seg *seg;

 if (!buf || !len)
  return ICE_ERR_PARAM;

 pkg = (struct ice_pkg_hdr *)buf;
 status = ice_verify_pkg(pkg, len);
 if (status) {
  ice_debug(hw, ICE_DBG_INIT, "failed to verify pkg (err: %d)\n",
     status);
  return status;
 }


 status = ice_init_pkg_info(hw, pkg);
 if (status)
  return status;




 status = ice_chk_pkg_version(&hw->pkg_ver);
 if (status)
  return status;


 seg = (struct ice_seg *)ice_find_seg_in_pkg(hw, SEGMENT_TYPE_ICE, pkg);
 if (!seg) {
  ice_debug(hw, ICE_DBG_INIT, "no ice segment in package.\n");
  return ICE_ERR_CFG;
 }


 status = ice_download_pkg(hw, seg);
 if (status == ICE_ERR_AQ_NO_WORK) {
  ice_debug(hw, ICE_DBG_INIT,
     "package previously loaded - no work.\n");
  status = 0;
 }




 if (!status) {
  status = ice_get_pkg_info(hw);
  if (!status)
   status = ice_chk_pkg_version(&hw->active_pkg_ver);
 }

 if (!status) {
  hw->seg = seg;




  ice_init_pkg_regs(hw);
  ice_fill_blk_tbls(hw);
 } else {
  ice_debug(hw, ICE_DBG_INIT, "package load failed, %d\n",
     status);
 }

 return status;
}
