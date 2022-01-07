
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
struct vsp1_histogram {TYPE_1__ entity; } ;
struct v4l2_rect {int height; int width; int top; int left; } ;
struct v4l2_subdev_selection {scalar_t__ pad; int target; struct v4l2_rect r; int which; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {int height; int width; } ;


 int EINVAL ;
 scalar_t__ HISTO_PAD_SINK ;






 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct vsp1_histogram* subdev_to_histo (struct v4l2_subdev*) ;
 struct v4l2_subdev_pad_config* vsp1_entity_get_pad_config (TYPE_1__*,struct v4l2_subdev_pad_config*,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,struct v4l2_subdev_pad_config*,scalar_t__) ;
 struct v4l2_rect* vsp1_entity_get_pad_selection (TYPE_1__*,struct v4l2_subdev_pad_config*,scalar_t__,int) ;

__attribute__((used)) static int histo_get_selection(struct v4l2_subdev *subdev,
          struct v4l2_subdev_pad_config *cfg,
          struct v4l2_subdev_selection *sel)
{
 struct vsp1_histogram *histo = subdev_to_histo(subdev);
 struct v4l2_subdev_pad_config *config;
 struct v4l2_mbus_framefmt *format;
 struct v4l2_rect *crop;
 int ret = 0;

 if (sel->pad != HISTO_PAD_SINK)
  return -EINVAL;

 mutex_lock(&histo->entity.lock);

 config = vsp1_entity_get_pad_config(&histo->entity, cfg, sel->which);
 if (!config) {
  ret = -EINVAL;
  goto done;
 }

 switch (sel->target) {
 case 132:
 case 131:
  crop = vsp1_entity_get_pad_selection(&histo->entity, config,
           HISTO_PAD_SINK,
           130);
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = crop->width;
  sel->r.height = crop->height;
  break;

 case 129:
 case 128:
  format = vsp1_entity_get_pad_format(&histo->entity, config,
          HISTO_PAD_SINK);
  sel->r.left = 0;
  sel->r.top = 0;
  sel->r.width = format->width;
  sel->r.height = format->height;
  break;

 case 133:
 case 130:
  sel->r = *vsp1_entity_get_pad_selection(&histo->entity, config,
       sel->pad, sel->target);
  break;

 default:
  ret = -EINVAL;
  break;
 }

done:
 mutex_unlock(&histo->entity.lock);
 return ret;
}
