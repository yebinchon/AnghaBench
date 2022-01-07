
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct venus_format {int flags; int pixfmt; } ;
struct v4l2_fmtdesc {int flags; int pixelformat; int type; int index; int reserved; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct venus_format* find_format_by_index (struct venus_inst*,int ,int ) ;
 int memset (int ,int ,int) ;
 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int vdec_enum_fmt(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
 struct venus_inst *inst = to_inst(file);
 const struct venus_format *fmt;

 memset(f->reserved, 0, sizeof(f->reserved));

 fmt = find_format_by_index(inst, f->index, f->type);
 if (!fmt)
  return -EINVAL;

 f->pixelformat = fmt->pixfmt;
 f->flags = fmt->flags;

 return 0;
}
