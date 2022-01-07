
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int MTK_JPEG_FMT_FLAG_DEC_CAPTURE ;
 int MTK_JPEG_NUM_FORMATS ;
 int mtk_jpeg_enum_fmt (int ,int ,struct v4l2_fmtdesc*,int ) ;
 int mtk_jpeg_formats ;

__attribute__((used)) static int mtk_jpeg_enum_fmt_vid_cap(struct file *file, void *priv,
         struct v4l2_fmtdesc *f)
{
 return mtk_jpeg_enum_fmt(mtk_jpeg_formats, MTK_JPEG_NUM_FORMATS, f,
     MTK_JPEG_FMT_FLAG_DEC_CAPTURE);
}
