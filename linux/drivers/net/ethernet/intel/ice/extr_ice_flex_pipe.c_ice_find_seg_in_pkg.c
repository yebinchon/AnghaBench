
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_2__ {int draft; int update; int minor; int major; } ;
struct ice_pkg_hdr {int * seg_offset; int seg_count; TYPE_1__ format_ver; } ;
struct ice_hw {int dummy; } ;
struct ice_generic_seg_hdr {int seg_type; } ;


 int ICE_DBG_PKG ;
 int ice_debug (struct ice_hw*,int ,char*,int ,int ,int ,int ) ;
 size_t le32_to_cpu (int ) ;

__attribute__((used)) static struct ice_generic_seg_hdr *
ice_find_seg_in_pkg(struct ice_hw *hw, u32 seg_type,
      struct ice_pkg_hdr *pkg_hdr)
{
 u32 i;

 ice_debug(hw, ICE_DBG_PKG, "Package format version: %d.%d.%d.%d\n",
    pkg_hdr->format_ver.major, pkg_hdr->format_ver.minor,
    pkg_hdr->format_ver.update, pkg_hdr->format_ver.draft);


 for (i = 0; i < le32_to_cpu(pkg_hdr->seg_count); i++) {
  struct ice_generic_seg_hdr *seg;

  seg = (struct ice_generic_seg_hdr *)
   ((u8 *)pkg_hdr + le32_to_cpu(pkg_hdr->seg_offset[i]));

  if (le32_to_cpu(seg->seg_type) == seg_type)
   return seg;
 }

 return ((void*)0);
}
