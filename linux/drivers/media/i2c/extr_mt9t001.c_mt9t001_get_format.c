
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev_format {int which; int pad; int format; } ;
struct v4l2_subdev {int dummy; } ;
struct mt9t001 {int dummy; } ;


 int * __mt9t001_get_pad_format (struct mt9t001*,struct v4l2_subdev_pad_config*,int ,int ) ;
 struct mt9t001* to_mt9t001 (struct v4l2_subdev*) ;

__attribute__((used)) static int mt9t001_get_format(struct v4l2_subdev *subdev,
         struct v4l2_subdev_pad_config *cfg,
         struct v4l2_subdev_format *format)
{
 struct mt9t001 *mt9t001 = to_mt9t001(subdev);

 format->format = *__mt9t001_get_pad_format(mt9t001, cfg, format->pad,
         format->which);
 return 0;
}
