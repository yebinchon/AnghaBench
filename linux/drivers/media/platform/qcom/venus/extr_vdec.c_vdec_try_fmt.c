
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_inst {int dummy; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 struct venus_inst* to_inst (struct file*) ;
 int vdec_try_fmt_common (struct venus_inst*,struct v4l2_format*) ;

__attribute__((used)) static int vdec_try_fmt(struct file *file, void *fh, struct v4l2_format *f)
{
 struct venus_inst *inst = to_inst(file);

 vdec_try_fmt_common(inst, f);

 return 0;
}
