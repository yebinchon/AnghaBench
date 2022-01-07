
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pixelformat; int reserved; int buffersize; } ;
struct TYPE_6__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;
struct TYPE_7__ {scalar_t__ pixelformat; int buffersize; } ;


 unsigned int ARRAY_SIZE (TYPE_3__*) ;
 TYPE_3__* formats ;
 int memset (int ,int ,int) ;

__attribute__((used)) static int rcar_drif_try_fmt_sdr_cap(struct file *file, void *priv,
         struct v4l2_format *f)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(formats); i++) {
  if (formats[i].pixelformat == f->fmt.sdr.pixelformat) {
   f->fmt.sdr.buffersize = formats[i].buffersize;
   return 0;
  }
 }

 f->fmt.sdr.pixelformat = formats[0].pixelformat;
 f->fmt.sdr.buffersize = formats[0].buffersize;
 memset(f->fmt.sdr.reserved, 0, sizeof(f->fmt.sdr.reserved));

 return 0;
}
