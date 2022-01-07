
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vimc_deb_pix_map {int dummy; } ;
struct vimc_deb_device {scalar_t__ src_code; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_frame_size_enum {scalar_t__ code; int max_height; int min_height; int max_width; int min_width; int pad; scalar_t__ index; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ IS_SINK (int ) ;
 int VIMC_FRAME_MAX_HEIGHT ;
 int VIMC_FRAME_MAX_WIDTH ;
 int VIMC_FRAME_MIN_HEIGHT ;
 int VIMC_FRAME_MIN_WIDTH ;
 struct vimc_deb_device* v4l2_get_subdevdata (struct v4l2_subdev*) ;
 struct vimc_deb_pix_map* vimc_deb_pix_map_by_code (scalar_t__) ;

__attribute__((used)) static int vimc_deb_enum_frame_size(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_frame_size_enum *fse)
{
 struct vimc_deb_device *vdeb = v4l2_get_subdevdata(sd);

 if (fse->index)
  return -EINVAL;

 if (IS_SINK(fse->pad)) {
  const struct vimc_deb_pix_map *vpix =
   vimc_deb_pix_map_by_code(fse->code);

  if (!vpix)
   return -EINVAL;
 } else if (fse->code != vdeb->src_code) {
  return -EINVAL;
 }

 fse->min_width = VIMC_FRAME_MIN_WIDTH;
 fse->max_width = VIMC_FRAME_MAX_WIDTH;
 fse->min_height = VIMC_FRAME_MIN_HEIGHT;
 fse->max_height = VIMC_FRAME_MAX_HEIGHT;

 return 0;
}
