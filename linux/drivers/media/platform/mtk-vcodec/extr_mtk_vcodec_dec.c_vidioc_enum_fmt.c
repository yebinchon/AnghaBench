
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int index; int flags; int pixelformat; } ;
struct mtk_video_fmt {scalar_t__ type; int flags; int fourcc; } ;


 int EINVAL ;
 scalar_t__ MTK_FMT_DEC ;
 scalar_t__ MTK_FMT_FRAME ;
 int NUM_FORMATS ;
 struct mtk_video_fmt* mtk_video_formats ;

__attribute__((used)) static int vidioc_enum_fmt(struct v4l2_fmtdesc *f, bool output_queue)
{
 const struct mtk_video_fmt *fmt;
 int i, j = 0;

 for (i = 0; i < NUM_FORMATS; i++) {
  if (output_queue && (mtk_video_formats[i].type != MTK_FMT_DEC))
   continue;
  if (!output_queue &&
   (mtk_video_formats[i].type != MTK_FMT_FRAME))
   continue;

  if (j == f->index)
   break;
  ++j;
 }

 if (i == NUM_FORMATS)
  return -EINVAL;

 fmt = &mtk_video_formats[i];
 f->pixelformat = fmt->fourcc;
 f->flags = fmt->flags;

 return 0;
}
