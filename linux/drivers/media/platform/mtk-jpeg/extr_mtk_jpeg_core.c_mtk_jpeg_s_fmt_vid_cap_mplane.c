
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int mtk_jpeg_fh_to_ctx (void*) ;
 int mtk_jpeg_s_fmt_mplane (int ,struct v4l2_format*) ;
 int mtk_jpeg_try_fmt_vid_cap_mplane (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int mtk_jpeg_s_fmt_vid_cap_mplane(struct file *file, void *priv,
      struct v4l2_format *f)
{
 int ret;

 ret = mtk_jpeg_try_fmt_vid_cap_mplane(file, priv, f);
 if (ret)
  return ret;

 return mtk_jpeg_s_fmt_mplane(mtk_jpeg_fh_to_ctx(priv), f);
}
