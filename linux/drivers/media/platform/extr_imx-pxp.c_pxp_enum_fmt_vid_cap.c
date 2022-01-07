
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int MEM2MEM_CAPTURE ;
 int pxp_enum_fmt (struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int pxp_enum_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_fmtdesc *f)
{
 return pxp_enum_fmt(f, MEM2MEM_CAPTURE);
}
