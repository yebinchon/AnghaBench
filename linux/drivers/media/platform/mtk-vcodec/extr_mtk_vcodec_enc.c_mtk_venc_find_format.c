
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pixelformat; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct mtk_video_fmt {scalar_t__ fourcc; } ;


 unsigned int NUM_FORMATS ;
 struct mtk_video_fmt* mtk_video_formats ;

__attribute__((used)) static const struct mtk_video_fmt *mtk_venc_find_format(struct v4l2_format *f)
{
 const struct mtk_video_fmt *fmt;
 unsigned int k;

 for (k = 0; k < NUM_FORMATS; k++) {
  fmt = &mtk_video_formats[k];
  if (fmt->fourcc == f->fmt.pix.pixelformat)
   return fmt;
 }

 return ((void*)0);
}
