
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * ops; } ;
struct v4l2_subdev {int * internal_ops; TYPE_2__ entity; int name; int flags; } ;
struct TYPE_4__ {TYPE_3__* sd_pads; struct v4l2_subdev subdev; } ;
struct fimc_dev {int id; TYPE_1__ vid_cap; } ;
struct TYPE_6__ {void* flags; } ;


 int FIMC_SD_PADS_NUM ;
 size_t FIMC_SD_PAD_SINK_CAM ;
 size_t FIMC_SD_PAD_SINK_FIFO ;
 size_t FIMC_SD_PAD_SOURCE ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int fimc_capture_sd_internal_ops ;
 int fimc_sd_media_ops ;
 int fimc_subdev_ops ;
 int media_entity_pads_init (TYPE_2__*,int ,TYPE_3__*) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct fimc_dev*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int fimc_initialize_capture_subdev(struct fimc_dev *fimc)
{
 struct v4l2_subdev *sd = &fimc->vid_cap.subdev;
 int ret;

 v4l2_subdev_init(sd, &fimc_subdev_ops);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 snprintf(sd->name, sizeof(sd->name), "FIMC.%d", fimc->id);

 fimc->vid_cap.sd_pads[FIMC_SD_PAD_SINK_CAM].flags = MEDIA_PAD_FL_SINK;
 fimc->vid_cap.sd_pads[FIMC_SD_PAD_SINK_FIFO].flags = MEDIA_PAD_FL_SINK;
 fimc->vid_cap.sd_pads[FIMC_SD_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&sd->entity, FIMC_SD_PADS_NUM,
    fimc->vid_cap.sd_pads);
 if (ret)
  return ret;

 sd->entity.ops = &fimc_sd_media_ops;
 sd->internal_ops = &fimc_capture_sd_internal_ops;
 v4l2_set_subdevdata(sd, fimc);
 return 0;
}
