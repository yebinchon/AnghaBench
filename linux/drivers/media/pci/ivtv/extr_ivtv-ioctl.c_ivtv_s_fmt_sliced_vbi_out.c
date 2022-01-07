
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int ivtv_g_fmt_sliced_vbi_out (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int ivtv_s_fmt_sliced_vbi_out(struct file *file, void *fh, struct v4l2_format *fmt)
{
 return ivtv_g_fmt_sliced_vbi_out(file, fh, fmt);
}
