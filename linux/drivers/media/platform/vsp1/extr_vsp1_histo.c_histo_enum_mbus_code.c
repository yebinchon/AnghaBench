
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_histogram {int num_formats; int formats; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_mbus_code_enum {scalar_t__ pad; int code; } ;
struct v4l2_subdev {int dummy; } ;


 scalar_t__ HISTO_PAD_SOURCE ;
 int MEDIA_BUS_FMT_FIXED ;
 struct vsp1_histogram* subdev_to_histo (struct v4l2_subdev*) ;
 int vsp1_subdev_enum_mbus_code (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_mbus_code_enum*,int ,int ) ;

__attribute__((used)) static int histo_enum_mbus_code(struct v4l2_subdev *subdev,
    struct v4l2_subdev_pad_config *cfg,
    struct v4l2_subdev_mbus_code_enum *code)
{
 struct vsp1_histogram *histo = subdev_to_histo(subdev);

 if (code->pad == HISTO_PAD_SOURCE) {
  code->code = MEDIA_BUS_FMT_FIXED;
  return 0;
 }

 return vsp1_subdev_enum_mbus_code(subdev, cfg, code, histo->formats,
       histo->num_formats);
}
