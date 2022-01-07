
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int index; int type; int * ops; } ;
struct vsp1_lif {TYPE_1__ entity; } ;
struct vsp1_device {int dev; } ;


 int ENOMEM ;
 struct vsp1_lif* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER ;
 int VSP1_ENTITY_LIF ;
 struct vsp1_lif* devm_kzalloc (int ,int,int ) ;
 int lif_entity_ops ;
 int lif_ops ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_1__*,char*,int,int *,int ) ;

struct vsp1_lif *vsp1_lif_create(struct vsp1_device *vsp1, unsigned int index)
{
 struct vsp1_lif *lif;
 int ret;

 lif = devm_kzalloc(vsp1->dev, sizeof(*lif), GFP_KERNEL);
 if (lif == ((void*)0))
  return ERR_PTR(-ENOMEM);

 lif->entity.ops = &lif_entity_ops;
 lif->entity.type = VSP1_ENTITY_LIF;
 lif->entity.index = index;






 ret = vsp1_entity_init(vsp1, &lif->entity, "lif", 2, &lif_ops,
          MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER);
 if (ret < 0)
  return ERR_PTR(ret);

 return lif;
}
