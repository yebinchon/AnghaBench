
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_pix_format_mplane {scalar_t__ pixelformat; scalar_t__ height; scalar_t__ width; scalar_t__ num_planes; scalar_t__ field; } ;
struct TYPE_6__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_3__ fmt; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct TYPE_5__ {TYPE_1__ fmt; } ;
struct camss_video {TYPE_2__ active_fmt; } ;


 int EPIPE ;
 int video_get_subdev_format (struct camss_video*,struct v4l2_format*) ;

__attribute__((used)) static int video_check_format(struct camss_video *video)
{
 struct v4l2_pix_format_mplane *pix = &video->active_fmt.fmt.pix_mp;
 struct v4l2_format format;
 struct v4l2_pix_format_mplane *sd_pix = &format.fmt.pix_mp;
 int ret;

 sd_pix->pixelformat = pix->pixelformat;
 ret = video_get_subdev_format(video, &format);
 if (ret < 0)
  return ret;

 if (pix->pixelformat != sd_pix->pixelformat ||
     pix->height != sd_pix->height ||
     pix->width != sd_pix->width ||
     pix->num_planes != sd_pix->num_planes ||
     pix->field != format.fmt.pix_mp.field)
  return -EPIPE;

 return 0;
}
