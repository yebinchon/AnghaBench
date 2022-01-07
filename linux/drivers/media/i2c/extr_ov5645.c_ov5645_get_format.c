
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct ov5645 {int dummy; } ;


 int * __ov5645_get_pad_format (struct ov5645*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct ov5645* to_ov5645 (struct v4l2_subdev*) ;

__attribute__((used)) static int ov5645_get_format(struct v4l2_subdev *sd,
        struct v4l2_subdev_pad_config *cfg,
        struct v4l2_subdev_format *format)
{
 struct ov5645 *ov5645 = to_ov5645(sd);

 format->format = *__ov5645_get_pad_format(ov5645, cfg, format->pad,
        format->which);
 return 0;
}
