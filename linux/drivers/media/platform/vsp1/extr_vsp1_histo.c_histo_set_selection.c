
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct vsp1_histogram {TYPE_1__ entity; } ;
struct v4l2_subdev_selection {scalar_t__ pad; scalar_t__ target; int which; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 scalar_t__ HISTO_PAD_SINK ;
 scalar_t__ V4L2_SEL_TGT_COMPOSE ;
 scalar_t__ V4L2_SEL_TGT_CROP ;
 int histo_set_compose (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*) ;
 int histo_set_crop (struct v4l2_subdev*,struct v4l2_subdev_pad_config*,struct v4l2_subdev_selection*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_histogram* subdev_to_histo (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;

__attribute__((used)) static int histo_set_selection(struct v4l2_subdev *subdev,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_selection *sel)
{
 struct vsp1_histogram *histo = subdev_to_histo(subdev);
 struct v4l2_subdev_pad_config *config;
 int ret;

 if (sel->pad != HISTO_PAD_SINK)
  return -EINVAL;

 mutex_lock(&histo->entity.lock);

 config = vsp1_entity_get_pad_config(&histo->entity, cfg, sel->which);
 if (!config) {
  ret = -EINVAL;
  goto done;
 }

 if (sel->target == V4L2_SEL_TGT_CROP)
  ret = histo_set_crop(subdev, config, sel);
 else if (sel->target == V4L2_SEL_TGT_COMPOSE)
  ret = histo_set_compose(subdev, config, sel);
 else
  ret = -EINVAL;

done:
 mutex_unlock(&histo->entity.lock);
 return ret;
}
