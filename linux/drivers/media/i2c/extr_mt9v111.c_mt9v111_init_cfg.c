
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev_pad_config {int try_fmt; } ;
struct v4l2_subdev {int dummy; } ;


 int mt9v111_def_fmt ;

__attribute__((used)) static int mt9v111_init_cfg(struct v4l2_subdev *subdev,
       struct v4l2_subdev_pad_config *cfg)
{
 cfg->try_fmt = mt9v111_def_fmt;

 return 0;
}
