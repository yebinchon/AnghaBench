
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vivid_dev {int sdr_buffersize; int sdr_pixelformat; } ;
struct TYPE_3__ {int reserved; int buffersize; int pixelformat; } ;
struct TYPE_4__ {TYPE_1__ sdr; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct file {int dummy; } ;


 int memset (int ,int ,int) ;
 struct vivid_dev* video_drvdata (struct file*) ;

int vidioc_g_fmt_sdr_cap(struct file *file, void *fh, struct v4l2_format *f)
{
 struct vivid_dev *dev = video_drvdata(file);

 f->fmt.sdr.pixelformat = dev->sdr_pixelformat;
 f->fmt.sdr.buffersize = dev->sdr_buffersize;
 memset(f->fmt.sdr.reserved, 0, sizeof(f->fmt.sdr.reserved));
 return 0;
}
