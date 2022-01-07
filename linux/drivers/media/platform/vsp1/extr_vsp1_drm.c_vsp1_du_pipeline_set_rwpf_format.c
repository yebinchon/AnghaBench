
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int num_planes; TYPE_1__* plane_fmt; } ;
struct vsp1_rwpf {TYPE_2__ format; struct vsp1_format_info const* fmtinfo; } ;
struct vsp1_format_info {int planes; int hsub; } ;
struct vsp1_device {int dev; } ;
struct TYPE_3__ {unsigned int bytesperline; } ;


 int EINVAL ;
 int dev_dbg (int ,char*,int ) ;
 struct vsp1_format_info* vsp1_get_format_info (struct vsp1_device*,int ) ;

__attribute__((used)) static int vsp1_du_pipeline_set_rwpf_format(struct vsp1_device *vsp1,
         struct vsp1_rwpf *rwpf,
         u32 pixelformat, unsigned int pitch)
{
 const struct vsp1_format_info *fmtinfo;
 unsigned int chroma_hsub;

 fmtinfo = vsp1_get_format_info(vsp1, pixelformat);
 if (!fmtinfo) {
  dev_dbg(vsp1->dev, "Unsupported pixel format %08x\n",
   pixelformat);
  return -EINVAL;
 }







 chroma_hsub = (fmtinfo->planes == 3) ? fmtinfo->hsub : 1;

 rwpf->fmtinfo = fmtinfo;
 rwpf->format.num_planes = fmtinfo->planes;
 rwpf->format.plane_fmt[0].bytesperline = pitch;
 rwpf->format.plane_fmt[1].bytesperline = pitch / chroma_hsub;

 return 0;
}
