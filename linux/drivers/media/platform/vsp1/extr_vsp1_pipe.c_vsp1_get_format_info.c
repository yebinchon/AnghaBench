
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vsp1_format_info {int fourcc; } ;
struct vsp1_device {TYPE_1__* info; } ;
struct TYPE_2__ {int gen; } ;


 unsigned int ARRAY_SIZE (struct vsp1_format_info*) ;



 struct vsp1_format_info* vsp1_video_formats ;

const struct vsp1_format_info *vsp1_get_format_info(struct vsp1_device *vsp1,
          u32 fourcc)
{
 unsigned int i;


 if (vsp1->info->gen != 2) {
  switch (fourcc) {
  case 128:
  case 130:
  case 129:
   return ((void*)0);
  }
 }

 for (i = 0; i < ARRAY_SIZE(vsp1_video_formats); ++i) {
  const struct vsp1_format_info *info = &vsp1_video_formats[i];

  if (info->fourcc == fourcc)
   return info;
 }

 return ((void*)0);
}
