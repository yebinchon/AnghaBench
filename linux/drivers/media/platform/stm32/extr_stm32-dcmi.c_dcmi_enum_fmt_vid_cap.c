
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct stm32_dcmi {size_t num_of_sd_formats; TYPE_1__** sd_formats; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int fourcc; } ;


 int EINVAL ;
 struct stm32_dcmi* video_drvdata (struct file*) ;

__attribute__((used)) static int dcmi_enum_fmt_vid_cap(struct file *file, void *priv,
     struct v4l2_fmtdesc *f)
{
 struct stm32_dcmi *dcmi = video_drvdata(file);

 if (f->index >= dcmi->num_of_sd_formats)
  return -EINVAL;

 f->pixelformat = dcmi->sd_formats[f->index]->fourcc;
 return 0;
}
