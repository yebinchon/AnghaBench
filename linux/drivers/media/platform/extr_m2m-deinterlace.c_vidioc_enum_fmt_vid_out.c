
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int MEM2MEM_OUTPUT ;
 int enum_fmt (struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int vidioc_enum_fmt_vid_out(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 return enum_fmt(f, MEM2MEM_OUTPUT);
}
