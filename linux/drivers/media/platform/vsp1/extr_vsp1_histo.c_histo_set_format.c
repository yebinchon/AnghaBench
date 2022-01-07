
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_histogram {int num_formats; int formats; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {scalar_t__ pad; } ;
struct v4l2_subdev {int dummy; } ;


 int HISTO_MAX_SIZE ;
 int HISTO_MIN_SIZE ;
 scalar_t__ HISTO_PAD_SINK ;
 int histo_get_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*) ;
 struct vsp1_histogram* subdev_to_histo (struct v4l2_subdev*) ;
 int vsp1_subdev_set_pad_format (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_format*,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int histo_set_format(struct v4l2_subdev *subdev,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_format *fmt)
{
 struct vsp1_histogram *histo = subdev_to_histo(subdev);

 if (fmt->pad != HISTO_PAD_SINK)
  return histo_get_format(subdev, cfg, fmt);

 return vsp1_subdev_set_pad_format(subdev, cfg, fmt,
       histo->formats, histo->num_formats,
       HISTO_MIN_SIZE, HISTO_MIN_SIZE,
       HISTO_MAX_SIZE, HISTO_MAX_SIZE);
}
