
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vsp1_device {int dev; } ;
struct TYPE_9__ {int error; } ;
struct TYPE_7__ {TYPE_4__* ctrl_handler; } ;
struct TYPE_8__ {TYPE_1__ subdev; int vsp1; int type; int * ops; } ;
struct vsp1_clu {TYPE_4__ ctrls; TYPE_2__ entity; int pool; int lock; } ;


 scalar_t__ CLU_SIZE ;
 int ENOMEM ;
 struct vsp1_clu* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_LUT ;
 int VSP1_ENTITY_CLU ;
 int clu_entity_ops ;
 int clu_mode_control ;
 int clu_ops ;
 int clu_table_control ;
 int dev_err (int ,char*) ;
 struct vsp1_clu* devm_kzalloc (int ,int,int ) ;
 int spin_lock_init (int *) ;
 int v4l2_ctrl_handler_init (TYPE_4__*,int) ;
 int v4l2_ctrl_handler_setup (TYPE_4__*) ;
 int v4l2_ctrl_new_custom (TYPE_4__*,int *,int *) ;
 int vsp1_dl_body_pool_create (int ,int,scalar_t__,int ) ;
 int vsp1_entity_destroy (TYPE_2__*) ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_2__*,char*,int,int *,int ) ;

struct vsp1_clu *vsp1_clu_create(struct vsp1_device *vsp1)
{
 struct vsp1_clu *clu;
 int ret;

 clu = devm_kzalloc(vsp1->dev, sizeof(*clu), GFP_KERNEL);
 if (clu == ((void*)0))
  return ERR_PTR(-ENOMEM);

 spin_lock_init(&clu->lock);

 clu->entity.ops = &clu_entity_ops;
 clu->entity.type = VSP1_ENTITY_CLU;

 ret = vsp1_entity_init(vsp1, &clu->entity, "clu", 2, &clu_ops,
          MEDIA_ENT_F_PROC_VIDEO_LUT);
 if (ret < 0)
  return ERR_PTR(ret);







 clu->pool = vsp1_dl_body_pool_create(clu->entity.vsp1, 3, CLU_SIZE + 1,
          0);
 if (!clu->pool)
  return ERR_PTR(-ENOMEM);


 v4l2_ctrl_handler_init(&clu->ctrls, 2);
 v4l2_ctrl_new_custom(&clu->ctrls, &clu_table_control, ((void*)0));
 v4l2_ctrl_new_custom(&clu->ctrls, &clu_mode_control, ((void*)0));

 clu->entity.subdev.ctrl_handler = &clu->ctrls;

 if (clu->ctrls.error) {
  dev_err(vsp1->dev, "clu: failed to initialize controls\n");
  ret = clu->ctrls.error;
  vsp1_entity_destroy(&clu->entity);
  return ERR_PTR(ret);
 }

 v4l2_ctrl_handler_setup(&clu->ctrls);

 return clu;
}
