
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct hva_dev {size_t nb_of_pixelformats; int * pixelformats; } ;
struct hva_ctx {int dummy; } ;
struct file {int private_data; } ;


 int EINVAL ;
 struct hva_dev* ctx_to_hdev (struct hva_ctx*) ;
 struct hva_ctx* fh_to_ctx (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int hva_enum_fmt_frame(struct file *file, void *priv,
         struct v4l2_fmtdesc *f)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct hva_dev *hva = ctx_to_hdev(ctx);

 if (unlikely(f->index >= hva->nb_of_pixelformats))
  return -EINVAL;

 f->pixelformat = hva->pixelformats[f->index];

 return 0;
}
