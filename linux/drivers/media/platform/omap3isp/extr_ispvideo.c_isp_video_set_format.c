
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct v4l2_mbus_framefmt {int dummy; } ;
struct TYPE_9__ {int field; } ;
struct TYPE_8__ {TYPE_4__ pix; } ;
struct v4l2_format {scalar_t__ type; TYPE_3__ fmt; } ;
struct isp_video_fh {struct v4l2_format format; } ;
struct isp_video {scalar_t__ type; int mutex; TYPE_2__* isp; } ;
struct file {int dummy; } ;
struct TYPE_6__ {struct isp_video video_out; } ;
struct TYPE_7__ {TYPE_1__ isp_ccdc; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int isp_video_mbus_to_pix (struct isp_video*,struct v4l2_mbus_framefmt*,TYPE_4__*) ;
 int isp_video_pix_to_mbus (TYPE_4__*,struct v4l2_mbus_framefmt*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isp_video_fh* to_isp_video_fh (void*) ;
 struct isp_video* video_drvdata (struct file*) ;

__attribute__((used)) static int
isp_video_set_format(struct file *file, void *fh, struct v4l2_format *format)
{
 struct isp_video_fh *vfh = to_isp_video_fh(fh);
 struct isp_video *video = video_drvdata(file);
 struct v4l2_mbus_framefmt fmt;

 if (format->type != video->type)
  return -EINVAL;


 switch (format->fmt.pix.field) {
 case 131:

  break;
 case 136:

  if (video->type == V4L2_BUF_TYPE_VIDEO_OUTPUT)
   format->fmt.pix.field = 131;
  break;
 case 134:




  format->fmt.pix.field = 132;

 case 132:
 case 133:

  if (video != &video->isp->isp_ccdc.video_out)
   format->fmt.pix.field = 131;
  break;
 case 128:
 case 135:
 case 129:
 case 130:
 default:



  format->fmt.pix.field = 131;
  break;
 }




 isp_video_pix_to_mbus(&format->fmt.pix, &fmt);
 isp_video_mbus_to_pix(video, &fmt, &format->fmt.pix);

 mutex_lock(&video->mutex);
 vfh->format = *format;
 mutex_unlock(&video->mutex);

 return 0;
}
