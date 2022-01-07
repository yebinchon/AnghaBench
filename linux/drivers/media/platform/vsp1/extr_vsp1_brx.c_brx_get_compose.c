
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subdev; } ;
struct vsp1_brx {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;


 struct v4l2_rect* v4l2_subdev_get_try_compose (int *,struct v4l2_subdev_pad_config*,unsigned int) ;

__attribute__((used)) static struct v4l2_rect *brx_get_compose(struct vsp1_brx *brx,
      struct v4l2_subdev_pad_config *cfg,
      unsigned int pad)
{
 return v4l2_subdev_get_try_compose(&brx->entity.subdev, cfg, pad);
}
