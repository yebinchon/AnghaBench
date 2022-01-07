
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct s5p_jpeg_ctx {scalar_t__ mode; } ;
struct file {int dummy; } ;


 scalar_t__ S5P_JPEG_ENCODE ;
 int SJPEG_FMT_FLAG_DEC_OUTPUT ;
 int SJPEG_FMT_FLAG_ENC_OUTPUT ;
 int SJPEG_NUM_FORMATS ;
 int enum_fmt (struct s5p_jpeg_ctx*,int ,int ,struct v4l2_fmtdesc*,int ) ;
 struct s5p_jpeg_ctx* fh_to_ctx (void*) ;
 int sjpeg_formats ;

__attribute__((used)) static int s5p_jpeg_enum_fmt_vid_out(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 struct s5p_jpeg_ctx *ctx = fh_to_ctx(priv);

 if (ctx->mode == S5P_JPEG_ENCODE)
  return enum_fmt(ctx, sjpeg_formats, SJPEG_NUM_FORMATS, f,
    SJPEG_FMT_FLAG_ENC_OUTPUT);

 return enum_fmt(ctx, sjpeg_formats, SJPEG_NUM_FORMATS, f,
   SJPEG_FMT_FLAG_DEC_OUTPUT);
}
