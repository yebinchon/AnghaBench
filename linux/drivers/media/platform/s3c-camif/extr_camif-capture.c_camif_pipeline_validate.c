
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; } ;
struct v4l2_subdev_format {TYPE_2__ format; int which; int pad; } ;
struct media_pad {int index; int entity; } ;
struct TYPE_6__ {scalar_t__ width; scalar_t__ height; scalar_t__ code; } ;
struct TYPE_4__ {int sd; } ;
struct camif_dev {TYPE_3__ mbus_fmt; TYPE_1__ sensor; int * pads; } ;


 int ENOIOCTLCMD ;
 int EPIPE ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int get_fmt ;
 int is_media_entity_v4l2_subdev (int ) ;
 struct media_pad* media_entity_remote_pad (int *) ;
 int v4l2_subdev_call (int ,struct media_pad*,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int camif_pipeline_validate(struct camif_dev *camif)
{
 struct v4l2_subdev_format src_fmt;
 struct media_pad *pad;
 int ret;


 pad = media_entity_remote_pad(&camif->pads[0]);
 if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
  return -EPIPE;

 src_fmt.pad = pad->index;
 src_fmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 ret = v4l2_subdev_call(camif->sensor.sd, pad, get_fmt, ((void*)0), &src_fmt);
 if (ret < 0 && ret != -ENOIOCTLCMD)
  return -EPIPE;

 if (src_fmt.format.width != camif->mbus_fmt.width ||
     src_fmt.format.height != camif->mbus_fmt.height ||
     src_fmt.format.code != camif->mbus_fmt.code)
  return -EPIPE;

 return 0;
}
