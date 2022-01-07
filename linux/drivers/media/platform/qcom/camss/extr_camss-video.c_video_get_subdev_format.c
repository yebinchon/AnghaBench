
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int code; } ;
struct v4l2_subdev_format {TYPE_2__ format; int which; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct TYPE_6__ {int pixelformat; } ;
struct TYPE_4__ {TYPE_3__ pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; int type; } ;
struct camss_video {int bpl_alignment; int * formats; int type; int nformats; } ;


 int EPIPE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int *,struct v4l2_subdev_format*) ;
 int video_find_format (int ,int ,int *,int ) ;
 int video_mbus_to_pix_mp (TYPE_2__*,TYPE_3__*,int *,int ) ;
 struct v4l2_subdev* video_remote_subdev (struct camss_video*,int *) ;

__attribute__((used)) static int video_get_subdev_format(struct camss_video *video,
       struct v4l2_format *format)
{
 struct v4l2_subdev_format fmt;
 struct v4l2_subdev *subdev;
 u32 pad;
 int ret;

 subdev = video_remote_subdev(video, &pad);
 if (subdev == ((void*)0))
  return -EPIPE;

 fmt.pad = pad;
 fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;

 ret = v4l2_subdev_call(subdev, pad, get_fmt, ((void*)0), &fmt);
 if (ret)
  return ret;

 ret = video_find_format(fmt.format.code,
    format->fmt.pix_mp.pixelformat,
    video->formats, video->nformats);
 if (ret < 0)
  return ret;

 format->type = video->type;

 return video_mbus_to_pix_mp(&fmt.format, &format->fmt.pix_mp,
        &video->formats[ret], video->bpl_alignment);
}
