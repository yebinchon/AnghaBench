
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_fmtdesc {int index; int pixelformat; } ;
struct mtk_jpeg_fmt {int flags; int fourcc; } ;


 int EINVAL ;

__attribute__((used)) static int mtk_jpeg_enum_fmt(struct mtk_jpeg_fmt *mtk_jpeg_formats, int n,
        struct v4l2_fmtdesc *f, u32 type)
{
 int i, num = 0;

 for (i = 0; i < n; ++i) {
  if (mtk_jpeg_formats[i].flags & type) {
   if (num == f->index)
    break;
   ++num;
  }
 }

 if (i >= n)
  return -EINVAL;

 f->pixelformat = mtk_jpeg_formats[i].fourcc;

 return 0;
}
