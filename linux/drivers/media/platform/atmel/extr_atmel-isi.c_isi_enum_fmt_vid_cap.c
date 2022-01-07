
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_fmtdesc {size_t index; int pixelformat; } ;
struct file {int dummy; } ;
struct atmel_isi {size_t num_user_formats; TYPE_1__** user_formats; } ;
struct TYPE_2__ {int fourcc; } ;


 int EINVAL ;
 struct atmel_isi* video_drvdata (struct file*) ;

__attribute__((used)) static int isi_enum_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_fmtdesc *f)
{
 struct atmel_isi *isi = video_drvdata(file);

 if (f->index >= isi->num_user_formats)
  return -EINVAL;

 f->pixelformat = isi->user_formats[f->index]->fourcc;
 return 0;
}
