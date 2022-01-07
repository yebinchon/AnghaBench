
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int private_data; } ;
struct delta_dev {size_t nb_of_streamformats; int * streamformats; } ;
struct delta_ctx {struct delta_dev* dev; } ;


 int EINVAL ;
 struct delta_ctx* to_ctx (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int delta_enum_fmt_stream(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;

 if (unlikely(f->index >= delta->nb_of_streamformats))
  return -EINVAL;

 f->pixelformat = delta->streamformats[f->index];

 return 0;
}
