
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buffersize; int pixelformat; } ;
struct TYPE_5__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct rcar_drif_sdr {TYPE_3__* fmt; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int buffersize; int pixelformat; } ;


 struct rcar_drif_sdr* video_drvdata (struct file*) ;

__attribute__((used)) static int rcar_drif_g_fmt_sdr_cap(struct file *file, void *priv,
       struct v4l2_format *f)
{
 struct rcar_drif_sdr *sdr = video_drvdata(file);

 f->fmt.sdr.pixelformat = sdr->fmt->pixelformat;
 f->fmt.sdr.buffersize = sdr->fmt->buffersize;

 return 0;
}
