
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_rwpf {int dlm; } ;
struct vsp1_entity {int dummy; } ;


 struct vsp1_rwpf* entity_to_rwpf (struct vsp1_entity*) ;
 int vsp1_dlm_destroy (int ) ;

__attribute__((used)) static void vsp1_wpf_destroy(struct vsp1_entity *entity)
{
 struct vsp1_rwpf *wpf = entity_to_rwpf(entity);

 vsp1_dlm_destroy(wpf->dlm);
}
