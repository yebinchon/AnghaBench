
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hns3_enet_ring_group {scalar_t__ count; int * ring; } ;



__attribute__((used)) static void hns3_clear_ring_group(struct hns3_enet_ring_group *group)
{
 group->ring = ((void*)0);
 group->count = 0;
}
