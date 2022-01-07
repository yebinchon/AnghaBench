
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_fmtdesc {int dummy; } ;
struct file {int dummy; } ;


 int FDP1_CAPTURE ;
 int fdp1_enum_fmt (struct v4l2_fmtdesc*,int ) ;

__attribute__((used)) static int fdp1_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 return fdp1_enum_fmt(f, FDP1_CAPTURE);
}
