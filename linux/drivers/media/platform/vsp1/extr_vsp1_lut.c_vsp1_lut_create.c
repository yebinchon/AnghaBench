
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int error; } ;
struct TYPE_7__ {TYPE_4__* ctrl_handler; } ;
struct TYPE_8__ {TYPE_1__ subdev; int type; int * ops; } ;
struct vsp1_lut {TYPE_4__ ctrls; TYPE_2__ entity; int pool; int lock; } ;
struct vsp1_device {int dev; } ;


 int ENOMEM ;
 struct vsp1_lut* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int LUT_SIZE ;
 int MEDIA_ENT_F_PROC_VIDEO_LUT ;
 int VSP1_ENTITY_LUT ;
 int dev_err (int ,char*) ;
 struct vsp1_lut* devm_kzalloc (int ,int,int ) ;
 int lut_entity_ops ;
 int lut_ops ;
 int lut_table_control ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_handler_init (TYPE_4__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_4__*) ;
 int v4l2_ctrl_new_custom (TYPE_4__*,int *,int *) ;
 int vsp1_dl_body_pool_create (struct vsp1_device*,int,int ,int ) ;
 int vsp1_entity_destroy (TYPE_2__*) ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_2__*,char*,int,int *,int ) ;

struct vsp1_lut *vsp1_lut_create(struct vsp1_device *vsp1)
{
 struct vsp1_lut *lut;
 int ret;

 lut = devm_kzalloc(vsp1->dev, sizeof(*lut), GFP_KERNEL);
 if (lut == ((void*)0))
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&lut->lock);

 lut->entity.ops = &lut_entity_ops;
 lut->entity.type = VSP1_ENTITY_LUT;

 ret = vsp1_entity_init(vsp1, &lut->entity, "lut", 2, &lut_ops,
          MEDIA_ENT_F_PROC_VIDEO_LUT);
 if (ret < 0)
  return ERR_PTR(ret);






 lut->pool = vsp1_dl_body_pool_create(vsp1, 3, LUT_SIZE, 0);
 if (!lut->pool)
  return ERR_PTR(-ENOMEM);


 v4l2_ctrl_handler_init(&lut->ctrls, 1);
 v4l2_ctrl_new_custom(&lut->ctrls, &lut_table_control, ((void*)0));

 lut->entity.subdev.ctrl_handler = &lut->ctrls;

 if (lut->ctrls.error) {
  dev_err(vsp1->dev, "lut: failed to initialize controls\n");
  ret = lut->ctrls.error;
  vsp1_entity_destroy(&lut->entity);
  return ERR_PTR(ret);
 }

 v4l2_ctrl_handler_setup(&lut->ctrls);

 return lut;
}
