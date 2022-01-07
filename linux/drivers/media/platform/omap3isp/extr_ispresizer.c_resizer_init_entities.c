
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct media_entity {int * ops; } ;
struct v4l2_subdev {int grp_id; struct media_entity entity; int flags; int name; int * internal_ops; } ;
struct media_pad {int flags; } ;
struct TYPE_5__ {int flags; } ;
struct TYPE_6__ {TYPE_1__ entity; } ;
struct TYPE_7__ {int capture_mem; int bpl_alignment; TYPE_2__ video; void* isp; int * ops; int type; } ;
struct isp_res_device {struct v4l2_subdev subdev; TYPE_3__ video_in; TYPE_3__ video_out; int input; struct media_pad* pads; } ;


 int MEDIA_ENT_FL_DEFAULT ;
 int MEDIA_PAD_FL_MUST_CONNECT ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int PAGE_ALIGN (int) ;
 int RESIZER_INPUT_NONE ;
 int RESZ_PADS_NUM ;
 size_t RESZ_PAD_SINK ;
 size_t RESZ_PAD_SOURCE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int media_entity_cleanup (struct media_entity*) ;
 int media_entity_pads_init (struct media_entity*,int ,struct media_pad*) ;
 int omap3isp_video_cleanup (TYPE_3__*) ;
 int omap3isp_video_init (TYPE_3__*,char*) ;
 int resizer_init_formats (struct v4l2_subdev*,int *) ;
 int resizer_media_ops ;
 int resizer_v4l2_internal_ops ;
 int resizer_v4l2_ops ;
 int resizer_video_ops ;
 int strscpy (int ,char*,int) ;
 void* to_isp_device (struct isp_res_device*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct isp_res_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int resizer_init_entities(struct isp_res_device *res)
{
 struct v4l2_subdev *sd = &res->subdev;
 struct media_pad *pads = res->pads;
 struct media_entity *me = &sd->entity;
 int ret;

 res->input = RESIZER_INPUT_NONE;

 v4l2_subdev_init(sd, &resizer_v4l2_ops);
 sd->internal_ops = &resizer_v4l2_internal_ops;
 strscpy(sd->name, "OMAP3 ISP resizer", sizeof(sd->name));
 sd->grp_id = 1 << 16;
 v4l2_set_subdevdata(sd, res);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 pads[RESZ_PAD_SINK].flags = MEDIA_PAD_FL_SINK
        | MEDIA_PAD_FL_MUST_CONNECT;
 pads[RESZ_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

 me->ops = &resizer_media_ops;
 ret = media_entity_pads_init(me, RESZ_PADS_NUM, pads);
 if (ret < 0)
  return ret;

 resizer_init_formats(sd, ((void*)0));

 res->video_in.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
 res->video_in.ops = &resizer_video_ops;
 res->video_in.isp = to_isp_device(res);
 res->video_in.capture_mem = PAGE_ALIGN(4096 * 4096) * 2 * 3;
 res->video_in.bpl_alignment = 32;
 res->video_out.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 res->video_out.ops = &resizer_video_ops;
 res->video_out.isp = to_isp_device(res);
 res->video_out.capture_mem = PAGE_ALIGN(4096 * 4096) * 2 * 3;
 res->video_out.bpl_alignment = 32;

 ret = omap3isp_video_init(&res->video_in, "resizer");
 if (ret < 0)
  goto error_video_in;

 ret = omap3isp_video_init(&res->video_out, "resizer");
 if (ret < 0)
  goto error_video_out;

 res->video_out.video.entity.flags |= MEDIA_ENT_FL_DEFAULT;

 return 0;

error_video_out:
 omap3isp_video_cleanup(&res->video_in);
error_video_in:
 media_entity_cleanup(&res->subdev.entity);
 return ret;
}
