
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int fh_to_ctx (void*) ;
 int s5p_jpeg_s_fmt (int ,struct v4l2_format*) ;
 int s5p_jpeg_try_fmt_vid_out (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int s5p_jpeg_s_fmt_vid_out(struct file *file, void *priv,
    struct v4l2_format *f)
{
 int ret;

 ret = s5p_jpeg_try_fmt_vid_out(file, priv, f);
 if (ret)
  return ret;

 return s5p_jpeg_s_fmt(fh_to_ctx(priv), f);
}
