
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_rq {int * ctrl; int ** bufs; int ring; struct vnic_dev* vdev; } ;
struct vnic_dev {int dummy; } ;


 unsigned int VNIC_RQ_BUF_BLKS_MAX ;
 int kfree (int *) ;
 int vnic_dev_free_desc_ring (struct vnic_dev*,int *) ;

void vnic_rq_free(struct vnic_rq *rq)
{
 struct vnic_dev *vdev;
 unsigned int i;

 vdev = rq->vdev;

 vnic_dev_free_desc_ring(vdev, &rq->ring);

 for (i = 0; i < VNIC_RQ_BUF_BLKS_MAX; i++) {
  if (rq->bufs[i]) {
   kfree(rq->bufs[i]);
   rq->bufs[i] = ((void*)0);
  }
 }

 rq->ctrl = ((void*)0);
}
