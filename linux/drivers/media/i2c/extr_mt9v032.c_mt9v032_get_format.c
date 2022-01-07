
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9v032 {int dummy; } ;


 int * __mt9v032_get_pad_format (struct mt9v032*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct mt9v032* to_mt9v032 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9v032_get_format(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *format)
{
 struct mt9v032 *mt9v032 = to_mt9v032(subdev);

 format->format = *__mt9v032_get_pad_format(mt9v032, cfg, format->pad,
         format->which);
 return 0;
}
