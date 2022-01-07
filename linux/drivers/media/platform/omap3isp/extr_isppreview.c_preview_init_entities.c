
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct media_entity {int * ops; } ;
struct v4l2_subdev {int grp_id; struct media_entity entity; int * ctrl_handler; int flags; int name; int * internal_ops; } ;
struct media_pad {int flags; } ;
struct TYPE_3__ {int capture_mem; int bpl_alignment; void* isp; int * ops; int type; } ;
struct isp_prev_device {struct v4l2_subdev subdev; TYPE_1__ video_in; TYPE_1__ video_out; int ctrls; int input; struct media_pad* pads; } ;


 int ISPPRV_BRIGHT_DEF ;
 int ISPPRV_BRIGHT_HIGH ;
 int ISPPRV_BRIGHT_LOW ;
 int ISPPRV_BRIGHT_STEP ;
 int ISPPRV_CONTRAST_DEF ;
 int ISPPRV_CONTRAST_HIGH ;
 int ISPPRV_CONTRAST_LOW ;
 int ISPPRV_CONTRAST_STEP ;
 int MEDIA_PAD_FL_MUST_CONNECT ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int PAGE_ALIGN (int) ;
 int PREVIEW_INPUT_NONE ;
 int PREV_PADS_NUM ;
 size_t PREV_PAD_SINK ;
 size_t PREV_PAD_SOURCE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_CID_BRIGHTNESS ;
 int V4L2_CID_CONTRAST ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int media_entity_cleanup (struct media_entity*) ;
 int media_entity_pads_init (struct media_entity*,int ,struct media_pad*) ;
 int omap3isp_video_cleanup (TYPE_1__*) ;
 int omap3isp_video_init (TYPE_1__*,char*) ;
 int preview_ctrl_ops ;
 int preview_init_formats (struct v4l2_subdev*,int *) ;
 int preview_media_ops ;
 int preview_v4l2_internal_ops ;
 int preview_v4l2_ops ;
 int preview_video_ops ;
 int strscpy (int ,char*,int) ;
 void* to_isp_device (struct isp_prev_device*) ;
 int v4l2_ctrl_handler_init (int *,int) ;
 int v4l2_ctrl_handler_setup (int *) ;
 int v4l2_ctrl_new_std (int *,int *,int ,int ,int ,int ,int ) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct isp_prev_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int preview_init_entities(struct isp_prev_device *prev)
{
 struct v4l2_subdev *sd = &prev->subdev;
 struct media_pad *pads = prev->pads;
 struct media_entity *me = &sd->entity;
 int ret;

 prev->input = PREVIEW_INPUT_NONE;

 v4l2_subdev_init(sd, &preview_v4l2_ops);
 sd->internal_ops = &preview_v4l2_internal_ops;
 strscpy(sd->name, "OMAP3 ISP preview", sizeof(sd->name));
 sd->grp_id = 1 << 16;
 v4l2_set_subdevdata(sd, prev);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 v4l2_ctrl_handler_init(&prev->ctrls, 2);
 v4l2_ctrl_new_std(&prev->ctrls, &preview_ctrl_ops, V4L2_CID_BRIGHTNESS,
     ISPPRV_BRIGHT_LOW, ISPPRV_BRIGHT_HIGH,
     ISPPRV_BRIGHT_STEP, ISPPRV_BRIGHT_DEF);
 v4l2_ctrl_new_std(&prev->ctrls, &preview_ctrl_ops, V4L2_CID_CONTRAST,
     ISPPRV_CONTRAST_LOW, ISPPRV_CONTRAST_HIGH,
     ISPPRV_CONTRAST_STEP, ISPPRV_CONTRAST_DEF);
 v4l2_ctrl_handler_setup(&prev->ctrls);
 sd->ctrl_handler = &prev->ctrls;

 pads[PREV_PAD_SINK].flags = MEDIA_PAD_FL_SINK
        | MEDIA_PAD_FL_MUST_CONNECT;
 pads[PREV_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

 me->ops = &preview_media_ops;
 ret = media_entity_pads_init(me, PREV_PADS_NUM, pads);
 if (ret < 0)
  return ret;

 preview_init_formats(sd, ((void*)0));





 prev->video_in.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
 prev->video_in.ops = &preview_video_ops;
 prev->video_in.isp = to_isp_device(prev);
 prev->video_in.capture_mem = PAGE_ALIGN(4096 * 4096) * 2 * 3;
 prev->video_in.bpl_alignment = 64;
 prev->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 prev->video_out.ops = &preview_video_ops;
 prev->video_out.isp = to_isp_device(prev);
 prev->video_out.capture_mem = PAGE_ALIGN(4096 * 4096) * 2 * 3;
 prev->video_out.bpl_alignment = 32;

 ret = omap3isp_video_init(&prev->video_in, "preview");
 if (ret < 0)
  goto error_video_in;

 ret = omap3isp_video_init(&prev->video_out, "preview");
 if (ret < 0)
  goto error_video_out;

 return 0;

error_video_out:
 omap3isp_video_cleanup(&prev->video_in);
error_video_in:
 media_entity_cleanup(&prev->subdev.entity);
 return ret;
}
