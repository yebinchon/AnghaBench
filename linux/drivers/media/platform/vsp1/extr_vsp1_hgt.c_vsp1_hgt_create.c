
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ctrl_handler; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_5__ {TYPE_3__ entity; } ;
struct vsp1_hgt {int ctrls; TYPE_2__ histo; } ;
struct vsp1_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int ENOMEM ;
 struct vsp1_hgt* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int HGT_DATA_SIZE ;
 int V4L2_META_FMT_VSP1_HGT ;
 int VSP1_ENTITY_HGT ;
 struct vsp1_hgt* devm_kzalloc (int ,int,int ) ;
 int hgt_entity_ops ;
 int hgt_hue_areas ;
 int hgt_mbus_formats ;
 int v4l2_ctrl_handler_init (int *,int) ;
 int v4l2_ctrl_handler_setup (int *) ;
 int v4l2_ctrl_new_custom (int *,int *,int *) ;
 int vsp1_entity_destroy (TYPE_3__*) ;
 int vsp1_histogram_init (struct vsp1_device*,TYPE_2__*,int ,char*,int *,int ,int ,int ,int ) ;

struct vsp1_hgt *vsp1_hgt_create(struct vsp1_device *vsp1)
{
 struct vsp1_hgt *hgt;
 int ret;

 hgt = devm_kzalloc(vsp1->dev, sizeof(*hgt), GFP_KERNEL);
 if (hgt == ((void*)0))
  return ERR_PTR(-ENOMEM);


 v4l2_ctrl_handler_init(&hgt->ctrls, 1);
 v4l2_ctrl_new_custom(&hgt->ctrls, &hgt_hue_areas, ((void*)0));

 hgt->histo.entity.subdev.ctrl_handler = &hgt->ctrls;


 ret = vsp1_histogram_init(vsp1, &hgt->histo, VSP1_ENTITY_HGT, "hgt",
      &hgt_entity_ops, hgt_mbus_formats,
      ARRAY_SIZE(hgt_mbus_formats),
      HGT_DATA_SIZE, V4L2_META_FMT_VSP1_HGT);
 if (ret < 0) {
  vsp1_entity_destroy(&hgt->histo.entity);
  return ERR_PTR(ret);
 }

 v4l2_ctrl_handler_setup(&hgt->ctrls);

 return hgt;
}
