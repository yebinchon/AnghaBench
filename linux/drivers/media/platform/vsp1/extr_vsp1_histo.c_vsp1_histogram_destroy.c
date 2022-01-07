
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_histogram {int dummy; } ;
struct vsp1_entity {int subdev; } ;


 struct vsp1_histogram* subdev_to_histo (int *) ;
 int vsp1_histogram_cleanup (struct vsp1_histogram*) ;

void vsp1_histogram_destroy(struct vsp1_entity *entity)
{
 struct vsp1_histogram *histo = subdev_to_histo(&entity->subdev);

 vsp1_histogram_cleanup(histo);
}
