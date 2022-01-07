
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subdev; } ;
struct vsp1_rwpf {TYPE_1__ entity; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_rect {int dummy; } ;


 int RWPF_PAD_SINK ;
 struct v4l2_rect* v4l2_subdev_get_try_crop (int *,struct v4l2_subdev_pad_config*,int ) ;

struct v4l2_rect *vsp1_rwpf_get_crop(struct vsp1_rwpf *rwpf,
         struct v4l2_subdev_pad_config *config)
{
 return v4l2_subdev_get_try_crop(&rwpf->entity.subdev, config,
     RWPF_PAD_SINK);
}
