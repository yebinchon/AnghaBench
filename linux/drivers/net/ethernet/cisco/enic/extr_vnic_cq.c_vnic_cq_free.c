
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_cq {int * ctrl; int ring; int vdev; } ;


 int vnic_dev_free_desc_ring (int ,int *) ;

void vnic_cq_free(struct vnic_cq *cq)
{
 vnic_dev_free_desc_ring(cq->vdev, &cq->ring);

 cq->ctrl = ((void*)0);
}
