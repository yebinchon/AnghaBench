
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* ctrl_handler; } ;
struct TYPE_7__ {TYPE_1__ subdev; int type; int * ops; } ;
struct TYPE_8__ {int error; } ;
struct vsp1_sru {int intensity; TYPE_2__ entity; TYPE_4__ ctrls; } ;
struct vsp1_device {int dev; } ;


 int ENOMEM ;
 struct vsp1_sru* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_SCALER ;
 int VSP1_ENTITY_SRU ;
 int dev_err (int ,char*) ;
 struct vsp1_sru* devm_kzalloc (int ,int,int ) ;
 int sru_entity_ops ;
 int sru_intensity_control ;
 int sru_ops ;
 int v4l2_ctrl_handler_init (TYPE_4__*,int) ;
 int v4l2_ctrl_new_custom (TYPE_4__*,int *,int *) ;
 int vsp1_entity_destroy (TYPE_2__*) ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_2__*,char*,int,int *,int ) ;

struct vsp1_sru *vsp1_sru_create(struct vsp1_device *vsp1)
{
 struct vsp1_sru *sru;
 int ret;

 sru = devm_kzalloc(vsp1->dev, sizeof(*sru), GFP_KERNEL);
 if (sru == ((void*)0))
  return ERR_PTR(-ENOMEM);

 sru->entity.ops = &sru_entity_ops;
 sru->entity.type = VSP1_ENTITY_SRU;

 ret = vsp1_entity_init(vsp1, &sru->entity, "sru", 2, &sru_ops,
          MEDIA_ENT_F_PROC_VIDEO_SCALER);
 if (ret < 0)
  return ERR_PTR(ret);


 v4l2_ctrl_handler_init(&sru->ctrls, 1);
 v4l2_ctrl_new_custom(&sru->ctrls, &sru_intensity_control, ((void*)0));

 sru->intensity = 1;

 sru->entity.subdev.ctrl_handler = &sru->ctrls;

 if (sru->ctrls.error) {
  dev_err(vsp1->dev, "sru: failed to initialize controls\n");
  ret = sru->ctrls.error;
  vsp1_entity_destroy(&sru->entity);
  return ERR_PTR(ret);
 }

 return sru;
}
