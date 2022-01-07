
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ major; scalar_t__ minor; scalar_t__ update; scalar_t__ draft; } ;
struct ice_pkg_hdr {int * seg_offset; int seg_count; TYPE_1__ format_ver; } ;
struct ice_generic_seg_hdr {int seg_size; } ;
typedef enum ice_status { ____Placeholder_ice_status } ice_status ;


 int ICE_ERR_BUF_TOO_SHORT ;
 int ICE_ERR_CFG ;
 scalar_t__ ICE_PKG_FMT_VER_DFT ;
 scalar_t__ ICE_PKG_FMT_VER_MAJ ;
 scalar_t__ ICE_PKG_FMT_VER_MNR ;
 scalar_t__ ICE_PKG_FMT_VER_UPD ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static enum ice_status ice_verify_pkg(struct ice_pkg_hdr *pkg, u32 len)
{
 u32 seg_count;
 u32 i;

 if (len < sizeof(*pkg))
  return ICE_ERR_BUF_TOO_SHORT;

 if (pkg->format_ver.major != ICE_PKG_FMT_VER_MAJ ||
     pkg->format_ver.minor != ICE_PKG_FMT_VER_MNR ||
     pkg->format_ver.update != ICE_PKG_FMT_VER_UPD ||
     pkg->format_ver.draft != ICE_PKG_FMT_VER_DFT)
  return ICE_ERR_CFG;


 seg_count = le32_to_cpu(pkg->seg_count);
 if (seg_count < 1)
  return ICE_ERR_CFG;


 if (len < sizeof(*pkg) + ((seg_count - 1) * sizeof(pkg->seg_offset)))
  return ICE_ERR_BUF_TOO_SHORT;


 for (i = 0; i < seg_count; i++) {
  u32 off = le32_to_cpu(pkg->seg_offset[i]);
  struct ice_generic_seg_hdr *seg;


  if (len < off + sizeof(*seg))
   return ICE_ERR_BUF_TOO_SHORT;

  seg = (struct ice_generic_seg_hdr *)((u8 *)pkg + off);


  if (len < off + le32_to_cpu(seg->seg_size))
   return ICE_ERR_BUF_TOO_SHORT;
 }

 return 0;
}
