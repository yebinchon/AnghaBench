
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int index; int type; int * ops; } ;
struct vsp1_uds {TYPE_1__ entity; } ;
struct vsp1_device {int dev; } ;


 int ENOMEM ;
 struct vsp1_uds* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_SCALER ;
 int VSP1_ENTITY_UDS ;
 struct vsp1_uds* devm_kzalloc (int ,int,int ) ;
 int sprintf (char*,char*,unsigned int) ;
 int uds_entity_ops ;
 int uds_ops ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_1__*,char*,int,int *,int ) ;

struct vsp1_uds *vsp1_uds_create(struct vsp1_device *vsp1, unsigned int index)
{
 struct vsp1_uds *uds;
 char name[6];
 int ret;

 uds = devm_kzalloc(vsp1->dev, sizeof(*uds), GFP_KERNEL);
 if (uds == ((void*)0))
  return ERR_PTR(-ENOMEM);

 uds->entity.ops = &uds_entity_ops;
 uds->entity.type = VSP1_ENTITY_UDS;
 uds->entity.index = index;

 sprintf(name, "uds.%u", index);
 ret = vsp1_entity_init(vsp1, &uds->entity, name, 2, &uds_ops,
          MEDIA_ENT_F_PROC_VIDEO_SCALER);
 if (ret < 0)
  return ERR_PTR(ret);

 return uds;
}
