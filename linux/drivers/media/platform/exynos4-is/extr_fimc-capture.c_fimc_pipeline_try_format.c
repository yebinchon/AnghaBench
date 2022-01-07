
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_mbus_framefmt {scalar_t__ code; scalar_t__ height; int width; } ;
struct v4l2_subdev_format {size_t pad; int which; struct v4l2_mbus_framefmt format; } ;
struct v4l2_subdev {int entity; } ;
struct media_pad {struct media_entity* entity; } ;
struct media_entity {size_t num_pads; TYPE_4__* pads; } ;
struct fimc_pipeline {struct v4l2_subdev** subdevs; } ;
struct fimc_fmt {scalar_t__ mbus_code; int fourcc; } ;
struct TYPE_6__ {struct media_entity entity; } ;
struct TYPE_5__ {int pipe; } ;
struct TYPE_7__ {TYPE_2__ subdev; TYPE_1__ ve; } ;
struct fimc_dev {TYPE_3__ vid_cap; } ;
struct fimc_ctx {struct fimc_dev* fimc_dev; } ;
typedef int sfmt ;
struct TYPE_8__ {int flags; } ;


 int EINVAL ;
 int FIMC_SD_PAD_SINK_CAM ;
 int FIMC_SD_PAD_SOURCE ;
 int FMT_FLAGS_CAM ;
 size_t IDX_SENSOR ;
 int MEDIA_PAD_FL_SINK ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int V4L2_SUBDEV_FORMAT_TRY ;
 scalar_t__ WARN_ON (int) ;
 struct fimc_fmt* fimc_capture_try_format (struct fimc_ctx*,int *,scalar_t__*,int *,int *,int ) ;
 struct fimc_fmt* fimc_find_format (int *,scalar_t__*,int ,int ) ;
 struct media_entity* fimc_pipeline_get_head (int *) ;
 struct media_pad* media_entity_remote_pad (TYPE_4__*) ;
 struct v4l2_subdev* media_entity_to_v4l2_subdev (struct media_entity*) ;
 int memset (struct v4l2_subdev_format*,int ,int) ;
 int set_fmt ;
 struct fimc_pipeline* to_fimc_pipeline (int ) ;
 int v4l2_subdev_call (struct v4l2_subdev*,struct media_pad*,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int fimc_pipeline_try_format(struct fimc_ctx *ctx,
        struct v4l2_mbus_framefmt *tfmt,
        struct fimc_fmt **fmt_id,
        bool set)
{
 struct fimc_dev *fimc = ctx->fimc_dev;
 struct fimc_pipeline *p = to_fimc_pipeline(fimc->vid_cap.ve.pipe);
 struct v4l2_subdev *sd = p->subdevs[IDX_SENSOR];
 struct v4l2_subdev_format sfmt;
 struct v4l2_mbus_framefmt *mf = &sfmt.format;
 struct media_entity *me;
 struct fimc_fmt *ffmt;
 struct media_pad *pad;
 int ret, i = 1;
 u32 fcc;

 if (WARN_ON(!sd || !tfmt))
  return -EINVAL;

 memset(&sfmt, 0, sizeof(sfmt));
 sfmt.format = *tfmt;
 sfmt.which = set ? V4L2_SUBDEV_FORMAT_ACTIVE : V4L2_SUBDEV_FORMAT_TRY;

 me = fimc_pipeline_get_head(&sd->entity);

 while (1) {
  ffmt = fimc_find_format(((void*)0), mf->code != 0 ? &mf->code : ((void*)0),
     FMT_FLAGS_CAM, i++);
  if (ffmt == ((void*)0)) {




   return -EINVAL;
  }
  mf->code = tfmt->code = ffmt->mbus_code;


  while (me != &fimc->vid_cap.subdev.entity) {
   sd = media_entity_to_v4l2_subdev(me);

   sfmt.pad = 0;
   ret = v4l2_subdev_call(sd, pad, set_fmt, ((void*)0), &sfmt);
   if (ret)
    return ret;

   if (me->pads[0].flags & MEDIA_PAD_FL_SINK) {
    sfmt.pad = me->num_pads - 1;
    mf->code = tfmt->code;
    ret = v4l2_subdev_call(sd, pad, set_fmt, ((void*)0),
         &sfmt);
    if (ret)
     return ret;
   }

   pad = media_entity_remote_pad(&me->pads[sfmt.pad]);
   if (!pad)
    return -EINVAL;
   me = pad->entity;
  }

  if (mf->code != tfmt->code)
   continue;

  fcc = ffmt->fourcc;
  tfmt->width = mf->width;
  tfmt->height = mf->height;
  ffmt = fimc_capture_try_format(ctx, &tfmt->width, &tfmt->height,
     ((void*)0), &fcc, FIMC_SD_PAD_SINK_CAM);
  ffmt = fimc_capture_try_format(ctx, &tfmt->width, &tfmt->height,
     ((void*)0), &fcc, FIMC_SD_PAD_SOURCE);
  if (ffmt && ffmt->mbus_code)
   mf->code = ffmt->mbus_code;
  if (mf->width != tfmt->width || mf->height != tfmt->height)
   continue;
  tfmt->code = mf->code;
  break;
 }

 if (fmt_id && ffmt)
  *fmt_id = ffmt;
 *tfmt = *mf;

 return 0;
}
