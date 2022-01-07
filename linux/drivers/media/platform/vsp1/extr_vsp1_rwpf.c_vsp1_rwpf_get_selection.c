
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int lock; } ;
struct vsp1_rwpf {TYPE_2__ entity; } ;
struct TYPE_4__ {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; TYPE_1__ r; int which; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;


 int EINVAL ;
 scalar_t__ RWPF_PAD_SINK ;


 scalar_t__ VSP1_ENTITY_WPF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_rwpf* to_rwpf (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_2__*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_2__*,struct v4l2_subdev_pad_config*,scalar_t__) ;
 TYPE_1__* vsp1_rwpf_get_crop (struct vsp1_rwpf*,struct v4l2_subdev_pad_config*) ;

__attribute__((used)) static int vsp1_rwpf_get_selection(struct v4l2_subdev *subdev,
       struct v4l2_subdev_pad_config *cfg,
       struct v4l2_subdev_selection *sel)
{
 struct vsp1_rwpf *rwpf = to_rwpf(subdev);
 struct v4l2_subdev_pad_config *config;
 struct v4l2_mbus_framefmt *format;
 int ret = 0;





 if (rwpf->entity.type == VSP1_ENTITY_WPF || sel->pad != RWPF_PAD_SINK)
  return -EINVAL;

 mutex_lock(&rwpf->entity.lock);

 config = vsp1_entity_get_pad_config(&rwpf->entity, cfg, sel->which);
 if (!config) {
  ret = -EINVAL;
  goto done;
 }

 switch (sel->target) {
 case 129:
  sel->r = *vsp1_rwpf_get_crop(rwpf, config);
  break;

 case 128:
  format = vsp1_entity_get_pad_format(&rwpf->entity, config,
          RWPF_PAD_SINK);
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = format->width;
  sel->r.height = format->height;
  break;

 default:
  ret = -EINVAL;
  break;
 }

done:
 mutex_unlock(&rwpf->entity.lock);
 return ret;
}
