
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct stm32_dcmi {struct v4l2_format fmt; } ;
struct file {int dummy; } ;


 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_g_fmt_vid_cap(struct file *file, void *priv,
         struct v4l2_format *fmt)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);

 *fmt = dcmi->fmt;

 return 0;
}
