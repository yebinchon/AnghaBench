
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_entity {int subdev; } ;
struct vsp1_clu {int pool; } ;


 struct vsp1_clu* to_clu (int *) ;
 int vsp1_dl_body_pool_destroy (int ) ;

__attribute__((used)) static void clu_destroy(struct vsp1_entity *entity)
{
 struct vsp1_clu *clu = to_clu(&entity->subdev);

 vsp1_dl_body_pool_destroy(clu->pool);
}
