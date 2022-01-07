
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int reserved; int buffersize; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct airspy {int buffersize; int pixelformat; } ;


 int memset (int ,int ,int) ;
 struct airspy* video_drvdata (struct file*) ;

__attribute__((used)) static int airspy_g_fmt_sdr_cap(struct file *file, void *priv,
  struct v4l2_format *f)
{
 struct airspy *s = video_drvdata(file);

 f->fmt.sdr.pixelformat = s->pixelformat;
 f->fmt.sdr.buffersize = s->buffersize;
 memset(f->fmt.sdr.reserved, 0, sizeof(f->fmt.sdr.reserved));

 return 0;
}
