
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev_pad_config {int dummy; } ;
struct TYPE_2__ {int field; scalar_t__ height; scalar_t__ width; int code; } ;
struct v4l2_subdev_format {scalar_t__ which; TYPE_1__ format; int pad; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5695_mode {scalar_t__ height; scalar_t__ vts_def; scalar_t__ width; scalar_t__ hts_def; } ;
struct ov5695 {int mutex; int vblank; int hblank; struct ov5695_mode const* cur_mode; } ;
typedef scalar_t__ s64 ;


 int MEDIA_BUS_FMT_SBGGR10_1X10 ;
 scalar_t__ OV5695_VTS_MAX ;
 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_SUBDEV_FORMAT_TRY ;
 int __v4l2_ctrl_modify_range (int ,scalar_t__,scalar_t__,int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ov5695_mode* ov5695_find_best_fit (struct v4l2_subdev_format*) ;
 struct ov5695* to_ov5695 (struct v4l2_subdev*) ;
 TYPE_1__* v4l2_subdev_get_try_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int ov5695_set_fmt(struct v4l2_subdev *sd,
     struct v4l2_subdev_pad_config *cfg,
     struct v4l2_subdev_format *fmt)
{
 struct ov5695 *ov5695 = to_ov5695(sd);
 const struct ov5695_mode *mode;
 s64 h_blank, vblank_def;

 mutex_lock(&ov5695->mutex);

 mode = ov5695_find_best_fit(fmt);
 fmt->format.code = MEDIA_BUS_FMT_SBGGR10_1X10;
 fmt->format.width = mode->width;
 fmt->format.height = mode->height;
 fmt->format.field = V4L2_FIELD_NONE;
 if (fmt->which == V4L2_SUBDEV_FORMAT_TRY) {



 } else {
  ov5695->cur_mode = mode;
  h_blank = mode->hts_def - mode->width;
  __v4l2_ctrl_modify_range(ov5695->hblank, h_blank,
      h_blank, 1, h_blank);
  vblank_def = mode->vts_def - mode->height;
  __v4l2_ctrl_modify_range(ov5695->vblank, vblank_def,
      OV5695_VTS_MAX - mode->height,
      1, vblank_def);
 }

 mutex_unlock(&ov5695->mutex);

 return 0;
}
