
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ops; int function; } ;
struct v4l2_subdev {TYPE_1__ entity; int * internal_ops; struct v4l2_ctrl_handler* ctrl_handler; int name; int flags; int grp_id; int owner; } ;
struct v4l2_ctrl_ops {int dummy; } ;
struct v4l2_ctrl_handler {int error; } ;
struct fimc_isp_ctrls {void* auto_iso; void* colorfx; void* aewb_lock; int iso; void* exp_metering; void* exposure; void* auto_wb; void* hue; void* sharpness; void* contrast; void* brightness; void* saturation; struct v4l2_ctrl_handler handler; } ;
struct fimc_isp {TYPE_2__* subdev_pads; int subdev_lock; struct fimc_isp_ctrls ctrls; struct v4l2_subdev subdev; } ;
struct TYPE_5__ {void* flags; } ;


 int ARRAY_SIZE (int ) ;
 int FIMC_ISP_SD_PADS_NUM ;
 size_t FIMC_ISP_SD_PAD_SINK ;
 size_t FIMC_ISP_SD_PAD_SRC_DMA ;
 size_t FIMC_ISP_SD_PAD_SRC_FIFO ;
 int GRP_ID_FIMC_IS ;
 int MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ;
 void* MEDIA_PAD_FL_SINK ;
 void* MEDIA_PAD_FL_SOURCE ;
 int THIS_MODULE ;
 int V4L2_CID_3A_LOCK ;
 int V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_COLORFX ;
 int V4L2_CID_CONTRAST ;
 int V4L2_CID_EXPOSURE_ABSOLUTE ;
 int V4L2_CID_EXPOSURE_METERING ;
 int V4L2_CID_HUE ;
 int V4L2_CID_ISO_SENSITIVITY ;
 int V4L2_CID_ISO_SENSITIVITY_AUTO ;
 int V4L2_CID_POWER_LINE_FREQUENCY ;
 int V4L2_CID_POWER_LINE_FREQUENCY_AUTO ;
 int V4L2_CID_SATURATION ;
 int V4L2_CID_SHARPNESS ;
 int V4L2_COLORFX_NONE ;
 int V4L2_COLORFX_SET_CBCR ;
 int V4L2_EXPOSURE_METERING_AVERAGE ;
 int V4L2_ISO_SENSITIVITY_AUTO ;
 int V4L2_ISO_SENSITIVITY_MANUAL ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int V4L2_WHITE_BALANCE_AUTO ;
 int __isp_subdev_set_default_format (struct fimc_isp*) ;
 int fimc_is_subdev_internal_ops ;
 int fimc_is_subdev_media_ops ;
 int fimc_is_subdev_ops ;
 struct v4l2_ctrl_ops fimc_isp_ctrl_ops ;
 int iso_qmenu ;
 int media_entity_cleanup (TYPE_1__*) ;
 int media_entity_pads_init (TYPE_1__*,int ,TYPE_2__*) ;
 int mutex_init (int *) ;
 int snprintf (int ,int,char*) ;
 int v4l2_ctrl_auto_cluster (int,void**,int ,int) ;
 int v4l2_ctrl_handler_init (struct v4l2_ctrl_handler*,int) ;
 int v4l2_ctrl_new_int_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int ) ;
 void* v4l2_ctrl_new_std (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int,int ) ;
 void* v4l2_ctrl_new_std_menu (struct v4l2_ctrl_handler*,struct v4l2_ctrl_ops const*,int ,int,int,int) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct fimc_isp*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

int fimc_isp_subdev_create(struct fimc_isp *isp)
{
 const struct v4l2_ctrl_ops *ops = &fimc_isp_ctrl_ops;
 struct v4l2_ctrl_handler *handler = &isp->ctrls.handler;
 struct v4l2_subdev *sd = &isp->subdev;
 struct fimc_isp_ctrls *ctrls = &isp->ctrls;
 int ret;

 mutex_init(&isp->subdev_lock);

 v4l2_subdev_init(sd, &fimc_is_subdev_ops);

 sd->owner = THIS_MODULE;
 sd->grp_id = GRP_ID_FIMC_IS;
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;
 snprintf(sd->name, sizeof(sd->name), "FIMC-IS-ISP");

 sd->entity.function = MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER;
 isp->subdev_pads[FIMC_ISP_SD_PAD_SINK].flags = MEDIA_PAD_FL_SINK;
 isp->subdev_pads[FIMC_ISP_SD_PAD_SRC_FIFO].flags = MEDIA_PAD_FL_SOURCE;
 isp->subdev_pads[FIMC_ISP_SD_PAD_SRC_DMA].flags = MEDIA_PAD_FL_SOURCE;
 ret = media_entity_pads_init(&sd->entity, FIMC_ISP_SD_PADS_NUM,
    isp->subdev_pads);
 if (ret)
  return ret;

 v4l2_ctrl_handler_init(handler, 20);

 ctrls->saturation = v4l2_ctrl_new_std(handler, ops, V4L2_CID_SATURATION,
      -2, 2, 1, 0);
 ctrls->brightness = v4l2_ctrl_new_std(handler, ops, V4L2_CID_BRIGHTNESS,
      -4, 4, 1, 0);
 ctrls->contrast = v4l2_ctrl_new_std(handler, ops, V4L2_CID_CONTRAST,
      -2, 2, 1, 0);
 ctrls->sharpness = v4l2_ctrl_new_std(handler, ops, V4L2_CID_SHARPNESS,
      -2, 2, 1, 0);
 ctrls->hue = v4l2_ctrl_new_std(handler, ops, V4L2_CID_HUE,
      -2, 2, 1, 0);

 ctrls->auto_wb = v4l2_ctrl_new_std_menu(handler, ops,
     V4L2_CID_AUTO_N_PRESET_WHITE_BALANCE,
     8, ~0x14e, V4L2_WHITE_BALANCE_AUTO);

 ctrls->exposure = v4l2_ctrl_new_std(handler, ops,
     V4L2_CID_EXPOSURE_ABSOLUTE,
     -4, 4, 1, 0);

 ctrls->exp_metering = v4l2_ctrl_new_std_menu(handler, ops,
     V4L2_CID_EXPOSURE_METERING, 3,
     ~0xf, V4L2_EXPOSURE_METERING_AVERAGE);

 v4l2_ctrl_new_std_menu(handler, ops, V4L2_CID_POWER_LINE_FREQUENCY,
     V4L2_CID_POWER_LINE_FREQUENCY_AUTO, 0,
     V4L2_CID_POWER_LINE_FREQUENCY_AUTO);

 ctrls->auto_iso = v4l2_ctrl_new_std_menu(handler, ops,
   V4L2_CID_ISO_SENSITIVITY_AUTO, 1, 0,
   V4L2_ISO_SENSITIVITY_AUTO);

 ctrls->iso = v4l2_ctrl_new_int_menu(handler, ops,
   V4L2_CID_ISO_SENSITIVITY, ARRAY_SIZE(iso_qmenu) - 1,
   ARRAY_SIZE(iso_qmenu)/2 - 1, iso_qmenu);

 ctrls->aewb_lock = v4l2_ctrl_new_std(handler, ops,
     V4L2_CID_3A_LOCK, 0, 0x3, 0, 0);


 ctrls->colorfx = v4l2_ctrl_new_std_menu(handler, ops, V4L2_CID_COLORFX,
   V4L2_COLORFX_SET_CBCR + 1, ~0x1000f, V4L2_COLORFX_NONE);

 if (handler->error) {
  media_entity_cleanup(&sd->entity);
  return handler->error;
 }

 v4l2_ctrl_auto_cluster(2, &ctrls->auto_iso,
   V4L2_ISO_SENSITIVITY_MANUAL, 0);

 sd->ctrl_handler = handler;
 sd->internal_ops = &fimc_is_subdev_internal_ops;
 sd->entity.ops = &fimc_is_subdev_media_ops;
 v4l2_set_subdevdata(sd, isp);

 __isp_subdev_set_default_format(isp);

 return 0;
}
