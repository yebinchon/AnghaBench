
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int cxusb_medion_try_s_fmt_vid_cap (struct file*,struct v4l2_format*,int) ;

__attribute__((used)) static int cxusb_medion_try_fmt_vid_cap(struct file *file, void *fh,
     struct v4l2_format *f)
{
 return cxusb_medion_try_s_fmt_vid_cap(file, f, 0);
}
