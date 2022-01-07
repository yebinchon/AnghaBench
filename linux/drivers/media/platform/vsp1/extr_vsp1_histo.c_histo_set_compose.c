
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_histogram {int entity; } ;
struct v4l2_rect {int width; int height; scalar_t__ top; scalar_t__ left; } ;
struct v4l2_subdev_selection {struct v4l2_rect r; int pad; } ;
struct v4l2_subdev_pad_config {int dummy; } ;
struct v4l2_subdev {int dummy; } ;


 int V4L2_SEL_TGT_COMPOSE ;
 int V4L2_SEL_TGT_CROP ;
 void* clamp (int,int,int) ;
 struct vsp1_histogram* subdev_to_histo (struct v4l2_subdev*) ;
 struct v4l2_rect* vsp1_entity_get_pad_selection (int *,struct v4l2_subdev_pad_config*,int ,int ) ;

__attribute__((used)) static int histo_set_compose(struct v4l2_subdev *subdev,
        struct v4l2_subdev_pad_config *config,
        struct v4l2_subdev_selection *sel)
{
 struct vsp1_histogram *histo = subdev_to_histo(subdev);
 struct v4l2_rect *compose;
 struct v4l2_rect *crop;
 unsigned int ratio;






 sel->r.left = 0;
 sel->r.top = 0;

 crop = vsp1_entity_get_pad_selection(&histo->entity, config, sel->pad,
          V4L2_SEL_TGT_CROP);
 sel->r.width = clamp(sel->r.width, crop->width / 4, crop->width);
 ratio = 1 << (crop->width * 2 / sel->r.width / 3);
 sel->r.width = crop->width / ratio;


 sel->r.height = clamp(sel->r.height, crop->height / 4, crop->height);
 ratio = 1 << (crop->height * 2 / sel->r.height / 3);
 sel->r.height = crop->height / ratio;

 compose = vsp1_entity_get_pad_selection(&histo->entity, config,
      sel->pad,
      V4L2_SEL_TGT_COMPOSE);
 *compose = sel->r;

 return 0;
}
