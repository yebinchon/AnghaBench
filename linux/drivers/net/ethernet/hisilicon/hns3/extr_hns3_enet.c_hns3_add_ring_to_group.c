
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring_group {int count; struct hns3_enet_ring* ring; } ;
struct hns3_enet_ring {struct hns3_enet_ring* next; } ;



__attribute__((used)) static void hns3_add_ring_to_group(struct hns3_enet_ring_group *group,
       struct hns3_enet_ring *ring)
{
 ring->next = group->ring;
 group->ring = ring;

 group->count++;
}
