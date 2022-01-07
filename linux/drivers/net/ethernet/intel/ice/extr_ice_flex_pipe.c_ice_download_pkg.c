
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int draft; int update; int minor; int major; } ;
struct TYPE_4__ {int seg_name; int seg_size; int seg_type; TYPE_1__ seg_ver; } ;
struct ice_seg {TYPE_2__ hdr; } ;
struct ice_hw {int dummy; } ;
struct ice_buf_table {int buf_count; int buf_array; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_DBG_PKG ;
 int ice_debug (struct ice_hw*,int ,char*,int ,...) ;
 int ice_dwnld_cfg_bufs (struct ice_hw*,int ,int ) ;
 struct ice_buf_table* ice_find_buf_table (struct ice_seg*) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static enum ice_status
ice_download_pkg(struct ice_hw *hw, struct ice_seg *ice_seg)
{
 struct ice_buf_table *ice_buf_tbl;

 ice_debug(hw, ICE_DBG_PKG, "Segment version: %d.%d.%d.%d\n",
    ice_seg->hdr.seg_ver.major, ice_seg->hdr.seg_ver.minor,
    ice_seg->hdr.seg_ver.update, ice_seg->hdr.seg_ver.draft);

 ice_debug(hw, ICE_DBG_PKG, "Seg: type 0x%X, size %d, name %s\n",
    le32_to_cpu(ice_seg->hdr.seg_type),
    le32_to_cpu(ice_seg->hdr.seg_size), ice_seg->hdr.seg_name);

 ice_buf_tbl = ice_find_buf_table(ice_seg);

 ice_debug(hw, ICE_DBG_PKG, "Seg buf count: %d\n",
    le32_to_cpu(ice_buf_tbl->buf_count));

 return ice_dwnld_cfg_bufs(hw, ice_buf_tbl->buf_array,
      le32_to_cpu(ice_buf_tbl->buf_count));
}
