
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct stm32_dcmi {int queue; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int dcmi_set_fmt (struct stm32_dcmi*,struct v4l2_format*) ;
 scalar_t__ vb2_is_streaming (int *) ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_s_fmt_vid_cap(struct file *file, void *priv,
         struct v4l2_format *f)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);

 if (vb2_is_streaming(&dcmi->queue))
  return -EBUSY;

 return dcmi_set_fmt(dcmi, f);
}
