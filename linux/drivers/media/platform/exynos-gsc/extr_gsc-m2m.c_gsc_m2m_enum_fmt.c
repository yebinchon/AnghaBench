
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int gsc_enum_fmt (struct v4l2_fmtdesc*) ;

__attribute__((used)) static int gsc_m2m_enum_fmt(struct file *file, void *priv,
       struct v4l2_fmtdesc *f)
{
 return gsc_enum_fmt(f);
}
