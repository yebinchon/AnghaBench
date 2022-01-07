
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct v4l2_subdev {scalar_t__ dev; } ;
struct media_pad {int flags; struct media_entity* entity; } ;
struct media_entity {struct media_pad* pads; } ;
struct isp_pipeline {int state; int do_propagation; TYPE_2__* output; int lock; int ent_enum; } ;
struct TYPE_12__ {struct v4l2_subdev subdev; } ;
struct TYPE_11__ {struct v4l2_subdev subdev; } ;
struct TYPE_10__ {struct v4l2_subdev subdev; } ;
struct TYPE_9__ {struct v4l2_subdev subdev; } ;
struct isp_device {scalar_t__ dev; TYPE_6__ isp_hist; TYPE_5__ isp_af; TYPE_4__ isp_aewb; TYPE_3__ isp_ccdc; int crashed; } ;
typedef enum isp_pipeline_stream_state { ____Placeholder_isp_pipeline_stream_state } isp_pipeline_stream_state ;
struct TYPE_7__ {struct media_entity entity; } ;
struct TYPE_8__ {TYPE_1__ video; struct isp_device* isp; } ;


 int EIO ;
 int ENOIOCTLCMD ;
 int ISP_PIPELINE_IDLE_INPUT ;
 int ISP_PIPELINE_IDLE_OUTPUT ;
 int MEDIA_PAD_FL_SINK ;
 int is_media_entity_v4l2_subdev (struct media_entity*) ;
 scalar_t__ media_entity_enum_intersects (int *,int *) ;
 struct media_pad* media_entity_remote_pad (struct media_pad*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int s_stream ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int v4l2_subdev_call (struct v4l2_subdev*,int ,int ,int) ;
 int video ;

__attribute__((used)) static int isp_pipeline_enable(struct isp_pipeline *pipe,
          enum isp_pipeline_stream_state mode)
{
 struct isp_device *isp = pipe->output->isp;
 struct media_entity *entity;
 struct media_pad *pad;
 struct v4l2_subdev *subdev;
 unsigned long flags;
 int ret;






 if (media_entity_enum_intersects(&pipe->ent_enum, &isp->crashed))
  return -EIO;

 spin_lock_irqsave(&pipe->lock, flags);
 pipe->state &= ~(ISP_PIPELINE_IDLE_INPUT | ISP_PIPELINE_IDLE_OUTPUT);
 spin_unlock_irqrestore(&pipe->lock, flags);

 pipe->do_propagation = 0;

 entity = &pipe->output->video.entity;
 while (1) {
  pad = &entity->pads[0];
  if (!(pad->flags & MEDIA_PAD_FL_SINK))
   break;

  pad = media_entity_remote_pad(pad);
  if (!pad || !is_media_entity_v4l2_subdev(pad->entity))
   break;

  entity = pad->entity;
  subdev = media_entity_to_v4l2_subdev(entity);

  ret = v4l2_subdev_call(subdev, video, s_stream, mode);
  if (ret < 0 && ret != -ENOIOCTLCMD)
   return ret;

  if (subdev == &isp->isp_ccdc.subdev) {
   v4l2_subdev_call(&isp->isp_aewb.subdev, video,
     s_stream, mode);
   v4l2_subdev_call(&isp->isp_af.subdev, video,
     s_stream, mode);
   v4l2_subdev_call(&isp->isp_hist.subdev, video,
     s_stream, mode);
   pipe->do_propagation = 1;
  }


  if (subdev->dev != isp->dev)
   break;
 }

 return 0;
}
