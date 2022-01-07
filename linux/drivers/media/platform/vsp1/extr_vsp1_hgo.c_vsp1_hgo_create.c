
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * ctrl_handler; } ;
struct TYPE_10__ {TYPE_2__ subdev; } ;
struct TYPE_9__ {TYPE_5__ entity; } ;
struct TYPE_8__ {int handler; void* num_bins; void* max_rgb; } ;
struct vsp1_hgo {int max_rgb; int num_bins; TYPE_4__ histo; TYPE_3__ ctrls; } ;
struct vsp1_device {TYPE_1__* info; int dev; } ;
struct TYPE_6__ {int gen; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 struct vsp1_hgo* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HGO_DATA_SIZE ;
 int V4L2_META_FMT_VSP1_HGO ;
 int VSP1_ENTITY_HGO ;
 struct vsp1_hgo* devm_kzalloc (int ,int,int ) ;
 int hgo_entity_ops ;
 int hgo_max_rgb_control ;
 int hgo_mbus_formats ;
 int hgo_num_bins_control ;
 int v4l2_ctrl_handler_init (int *,int) ;
 void* v4l2_ctrl_new_custom (int *,int *,int *) ;
 int vsp1_entity_destroy (TYPE_5__*) ;
 int vsp1_histogram_init (struct vsp1_device*,TYPE_4__*,int ,char*,int *,int ,int ,int ,int ) ;

struct vsp1_hgo *vsp1_hgo_create(struct vsp1_device *vsp1)
{
 struct vsp1_hgo *hgo;
 int ret;

 hgo = devm_kzalloc(vsp1->dev, sizeof(*hgo), GFP_KERNEL);
 if (hgo == ((void*)0))
  return ERR_PTR(-ENOMEM);


 v4l2_ctrl_handler_init(&hgo->ctrls.handler,
          vsp1->info->gen == 3 ? 2 : 1);
 hgo->ctrls.max_rgb = v4l2_ctrl_new_custom(&hgo->ctrls.handler,
        &hgo_max_rgb_control, ((void*)0));
 if (vsp1->info->gen == 3)
  hgo->ctrls.num_bins =
   v4l2_ctrl_new_custom(&hgo->ctrls.handler,
          &hgo_num_bins_control, ((void*)0));

 hgo->max_rgb = 0;
 hgo->num_bins = 64;

 hgo->histo.entity.subdev.ctrl_handler = &hgo->ctrls.handler;


 ret = vsp1_histogram_init(vsp1, &hgo->histo, VSP1_ENTITY_HGO, "hgo",
      &hgo_entity_ops, hgo_mbus_formats,
      ARRAY_SIZE(hgo_mbus_formats),
      HGO_DATA_SIZE, V4L2_META_FMT_VSP1_HGO);
 if (ret < 0) {
  vsp1_entity_destroy(&hgo->histo.entity);
  return ERR_PTR(ret);
 }

 return hgo;
}
