
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct media_entity {int * ops; } ;
struct v4l2_subdev {int grp_id; struct media_entity entity; int flags; int name; int * internal_ops; } ;
struct media_pad {int flags; } ;
struct TYPE_2__ {int bpl_alignment; int bpl_max; int capture_mem; int * ops; int isp; int type; } ;
struct isp_ccp2_device {struct v4l2_subdev subdev; TYPE_1__ video_in; int output; int input; struct media_pad* pads; } ;


 int CCP2_INPUT_NONE ;
 int CCP2_OUTPUT_NONE ;
 int CCP2_PADS_NUM ;
 size_t CCP2_PAD_SINK ;
 size_t CCP2_PAD_SOURCE ;
 int MEDIA_PAD_FL_MUST_CONNECT ;
 int MEDIA_PAD_FL_SINK ;
 int MEDIA_PAD_FL_SOURCE ;
 int PAGE_ALIGN (int) ;
 int V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 int V4L2_SUBDEV_FL_HAS_DEVNODE ;
 int ccp2_init_formats (struct v4l2_subdev*,int *) ;
 int ccp2_media_ops ;
 int ccp2_sd_internal_ops ;
 int ccp2_sd_ops ;
 int ccp2_video_ops ;
 int media_entity_cleanup (struct media_entity*) ;
 int media_entity_pads_init (struct media_entity*,int ,struct media_pad*) ;
 int omap3isp_video_init (TYPE_1__*,char*) ;
 int strscpy (int ,char*,int) ;
 int to_isp_device (struct isp_ccp2_device*) ;
 int v4l2_set_subdevdata (struct v4l2_subdev*,struct isp_ccp2_device*) ;
 int v4l2_subdev_init (struct v4l2_subdev*,int *) ;

__attribute__((used)) static int ccp2_init_entities(struct isp_ccp2_device *ccp2)
{
 struct v4l2_subdev *sd = &ccp2->subdev;
 struct media_pad *pads = ccp2->pads;
 struct media_entity *me = &sd->entity;
 int ret;

 ccp2->input = CCP2_INPUT_NONE;
 ccp2->output = CCP2_OUTPUT_NONE;

 v4l2_subdev_init(sd, &ccp2_sd_ops);
 sd->internal_ops = &ccp2_sd_internal_ops;
 strscpy(sd->name, "OMAP3 ISP CCP2", sizeof(sd->name));
 sd->grp_id = 1 << 16;
 v4l2_set_subdevdata(sd, ccp2);
 sd->flags |= V4L2_SUBDEV_FL_HAS_DEVNODE;

 pads[CCP2_PAD_SINK].flags = MEDIA_PAD_FL_SINK
        | MEDIA_PAD_FL_MUST_CONNECT;
 pads[CCP2_PAD_SOURCE].flags = MEDIA_PAD_FL_SOURCE;

 me->ops = &ccp2_media_ops;
 ret = media_entity_pads_init(me, CCP2_PADS_NUM, pads);
 if (ret < 0)
  return ret;

 ccp2_init_formats(sd, ((void*)0));
 ccp2->video_in.type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
 ccp2->video_in.bpl_alignment = 32;
 ccp2->video_in.bpl_max = 0xffffffe0;
 ccp2->video_in.isp = to_isp_device(ccp2);
 ccp2->video_in.ops = &ccp2_video_ops;
 ccp2->video_in.capture_mem = PAGE_ALIGN(4096 * 4096) * 3;

 ret = omap3isp_video_init(&ccp2->video_in, "CCP2");
 if (ret < 0)
  goto error;

 return 0;

error:
 media_entity_cleanup(&ccp2->subdev.entity);
 return ret;
}
