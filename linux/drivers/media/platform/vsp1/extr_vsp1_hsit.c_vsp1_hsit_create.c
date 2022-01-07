
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int * ops; } ;
struct vsp1_hsit {int inverse; TYPE_1__ entity; } ;
struct vsp1_device {int dev; } ;


 int ENOMEM ;
 struct vsp1_hsit* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MEDIA_ENT_F_PROC_VIDEO_PIXEL_ENC_CONV ;
 int VSP1_ENTITY_HSI ;
 int VSP1_ENTITY_HST ;
 struct vsp1_hsit* devm_kzalloc (int ,int,int ) ;
 int hsit_entity_ops ;
 int hsit_ops ;
 int vsp1_entity_init (struct vsp1_device*,TYPE_1__*,char*,int,int *,int ) ;

struct vsp1_hsit *vsp1_hsit_create(struct vsp1_device *vsp1, bool inverse)
{
 struct vsp1_hsit *hsit;
 int ret;

 hsit = devm_kzalloc(vsp1->dev, sizeof(*hsit), GFP_KERNEL);
 if (hsit == ((void*)0))
  return ERR_PTR(-ENOMEM);

 hsit->inverse = inverse;

 hsit->entity.ops = &hsit_entity_ops;

 if (inverse)
  hsit->entity.type = VSP1_ENTITY_HSI;
 else
  hsit->entity.type = VSP1_ENTITY_HST;

 ret = vsp1_entity_init(vsp1, &hsit->entity, inverse ? "hsi" : "hst",
          2, &hsit_ops,
          MEDIA_ENT_F_PROC_VIDEO_PIXEL_ENC_CONV);
 if (ret < 0)
  return ERR_PTR(ret);

 return hsit;
}
