
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format {int dummy; } ;
struct stm32_dcmi {int dummy; } ;
struct file {int dummy; } ;


 int dcmi_try_fmt (struct stm32_dcmi*,struct v4l2_format*,int *,int *) ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_try_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);

 return dcmi_try_fmt(dcmi, f, ((void*)0), ((void*)0));
}
