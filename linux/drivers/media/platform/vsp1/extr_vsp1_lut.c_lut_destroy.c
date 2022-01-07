
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_lut {int pool; } ;
struct vsp1_entity {int subdev; } ;


 struct vsp1_lut* to_lut (int *) ;
 int vsp1_dl_body_pool_destroy (int ) ;

__attribute__((used)) static void lut_destroy(struct vsp1_entity *entity)
{
 struct vsp1_lut *lut = to_lut(&entity->subdev);

 vsp1_dl_body_pool_destroy(lut->pool);
}
