
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ops; int function; } ;
struct v4l2_subdev {int owner; TYPE_1__ entity; int * internal_ops; struct v4l2_ctrl_handler* ctrl_handler; int name; int flags; } ;
struct v4l2_ctrl_handler {int error; } ;
struct fimc_lite {int index; int test_pattern; TYPE_2__* subdev_pads; struct v4l2_subdev subdev; struct v4l2_ctrl_handler ctrl_handler; } ;
struct TYPE_5__ {void* flags; } ;


 int FLITE_SD_PADS_NUM ;
 size_t FLITE_SD_PAD_SINK ;
 size_t FLITE_SD_PAD_SOURCE_DMA ;
 size_t FLITE_SD_PAD_SOURCE_ISP ;
 int MEDIA_ENT_F_PROC_VIDEO_SCALER ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int THIS_MODULE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int fimc_lite_ctrl ;
 int fimc_lite_subdev_internal_ops ;
 int fimc_lite_subdev_media_ops ;
 int fimc_lite_subdev_ops ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int ,TYPE_2__*) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_custom (struct v4l2_ctrl_handler*,int *,int *) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct fimc_lite*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int fimc_lite_create_capture_subdev(struct fimc_lite *fimc)
{
 struct v4l2_ctrl_handler *handler = &fimc->ctrl_handler;
 struct v4l2_subdev *sd = &fimc->subdev;
 int ret;

 v4l2_subdev_init(sd, &fimc_lite_subdev_ops);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 snprintf(sd->name, sizeof(sd->name), "FIMC-LITE.%d", fimc->index);

 fimc->subdev_pads[FLITE_SD_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 fimc->subdev_pads[FLITE_SD_PAD_SOURCE_DMA].flags = MEDIA_PAD_FL_SOURCE;
 fimc->subdev_pads[FLITE_SD_PAD_SOURCE_ISP].flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&sd->entity, FLITE_SD_PADS_NUM,
    fimc->subdev_pads);
 if (ret)
  return ret;

 v4l2_ctrl_handler_init(handler, 1);
 fimc->test_pattern = v4l2_ctrl_new_custom(handler, &fimc_lite_ctrl,
        ((void*)0));
 if (handler->error) {
  media_entity_cleanup(&sd->entity);
  return handler->error;
 }

 sd->ctrl_handler = handler;
 sd->internal_ops = &fimc_lite_subdev_internal_ops;
 sd->entity.function = MEDIA_ENT_F_PROC_VIDEO_SCALER;
 sd->entity.ops = &fimc_lite_subdev_media_ops;
 sd->owner = THIS_MODULE;
 v4l2_set_subdevdata(sd, fimc);

 return 0;
}
