
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int index; int type; int * ops; } ;
struct vsp1_uif {int m3w_quirk; TYPE_1__ entity; } ;
struct vsp1_device {int dev; } ;


 int ENOMEM ;
 struct vsp1_uif* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_STATISTICS ;
 int VSP1_ENTITY_UIF ;
 struct vsp1_uif* devm_kzalloc (int ,int,int ) ;
 scalar_t__ soc_device_match (int ) ;
 int sprintf (char*,char*,unsigned int) ;
 int uif_entity_ops ;
 int uif_ops ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_1__*,char*,int,int *,int ) ;
 int vsp1_r8a7796 ;

struct vsp1_uif *vsp1_uif_create(struct vsp1_device *vsp1, unsigned int index)
{
 struct vsp1_uif *uif;
 char name[6];
 int ret;

 uif = devm_kzalloc(vsp1->dev, sizeof(*uif), GFP_KERNEL);
 if (!uif)
  return ERR_PTR(-ENOMEM);

 if (soc_device_match(vsp1_r8a7796))
  uif->m3w_quirk = 1;

 uif->entity.ops = &uif_entity_ops;
 uif->entity.type = VSP1_ENTITY_UIF;
 uif->entity.index = index;


 sprintf(name, "uif.%u", index + 4);
 ret = vsp1_entity_init(vsp1, &uif->entity, name, 2, &uif_ops,
          MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
 if (ret < 0)
  return ERR_PTR(ret);

 return uif;
}
