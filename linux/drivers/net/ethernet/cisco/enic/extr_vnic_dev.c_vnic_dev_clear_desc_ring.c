
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_dev_ring {int size; int descs; } ;


 int memset (int ,int ,int ) ;

void vnic_dev_clear_desc_ring(struct vnic_dev_ring *ring)
{
 memset(ring->descs, 0, ring->size);
}
