
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_subdev_format {int format; int which; } ;
struct TYPE_7__ {int sizeimage; scalar_t__ bytesperline; int pixelformat; } ;
struct TYPE_6__ {TYPE_3__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct TYPE_5__ {int nr_packets; } ;
struct saa7134_dev {TYPE_1__ ts; } ;
struct file {int dummy; } ;


 int MEDIA_BUS_FMT_FIXED ;
 int TS_PACKET_SIZE ;
 int V4L2_PIX_FMT_MPEG ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int pad ;
 int saa_call_all (struct saa7134_dev*,int ,int ,int *,struct v4l2_subdev_format*) ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,TYPE_3__*,int ) ;
 int v4l2_fill_pix_format (TYPE_3__*,int *) ;
 struct saa7134_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int empress_s_fmt_vid_cap(struct file *file, void *priv,
    struct v4l2_format *f)
{
 struct saa7134_dev *dev = video_drvdata(file);
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };

 v4l2_fill_mbus_format(&format.format, &f->fmt.pix, MEDIA_BUS_FMT_FIXED);
 saa_call_all(dev, pad, set_fmt, ((void*)0), &format);
 v4l2_fill_pix_format(&f->fmt.pix, &format.format);

 f->fmt.pix.pixelformat = V4L2_PIX_FMT_MPEG;
 f->fmt.pix.sizeimage = TS_PACKET_SIZE * dev->ts.nr_packets;
 f->fmt.pix.bytesperline = 0;

 return 0;
}
