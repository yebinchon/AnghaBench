
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9p031 {int dummy; } ;


 int * __mt9p031_get_pad_format (struct mt9p031*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct mt9p031* to_mt9p031 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9p031_get_format(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *fmt)
{
 struct mt9p031 *mt9p031 = to_mt9p031(subdev);

 fmt->format = *__mt9p031_get_pad_format(mt9p031, cfg, fmt->pad,
      fmt->which);
 return 0;
}
