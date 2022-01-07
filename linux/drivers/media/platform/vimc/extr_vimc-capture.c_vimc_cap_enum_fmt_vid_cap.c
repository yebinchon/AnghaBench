
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_pix_map {int pixelformat; } ;
struct v4l2_fmtdesc {int pixelformat; int index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct vimc_pix_map* vimc_pix_map_by_index (int ) ;

__attribute__((used)) static int vimc_cap_enum_fmt_vid_cap(struct file *file, void *priv,
         struct v4l2_fmtdesc *f)
{
 const struct vimc_pix_map *vpix = vimc_pix_map_by_index(f->index);

 if (!vpix)
  return -EINVAL;

 f->pixelformat = vpix->pixelformat;

 return 0;
}
