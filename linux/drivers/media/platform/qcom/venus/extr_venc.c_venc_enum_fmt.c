
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct venus_format {int pixfmt; } ;
struct v4l2_fmtdesc {int pixelformat; int reserved; int type; int index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 struct venus_format* find_format_by_index (struct venus_inst*,int ,int ) ;
 int memset (int ,int ,int) ;
 struct venus_inst* to_inst (struct file*) ;

__attribute__((used)) static int venc_enum_fmt(struct file *file, void *fh, struct v4l2_fmtdesc *f)
{
 struct venus_inst *inst = to_inst(file);
 const struct venus_format *fmt;

 fmt = find_format_by_index(inst, f->index, f->type);

 memset(f->reserved, 0, sizeof(f->reserved));

 if (!fmt)
  return -EINVAL;

 f->pixelformat = fmt->pixfmt;

 return 0;
}
