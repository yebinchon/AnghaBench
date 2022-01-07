
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;
struct ceu_fmt {int fourcc; } ;


 size_t ARRAY_SIZE (struct ceu_fmt*) ;
 int EINVAL ;
 struct ceu_fmt* ceu_fmt_list ;

__attribute__((used)) static int ceu_enum_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_fmtdesc *f)
{
 const struct ceu_fmt *fmt;

 if (f->index >= ARRAY_SIZE(ceu_fmt_list))
  return -EINVAL;

 fmt = &ceu_fmt_list[f->index];
 f->pixelformat = fmt->fourcc;

 return 0;
}
