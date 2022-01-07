
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_wq {int ring; int ctrl; struct vnic_dev* vdev; scalar_t__ index; } ;
struct vnic_dev {int dummy; } ;


 int EINVAL ;
 int RES_TYPE_DEVCMD2 ;
 int vnic_dev_alloc_desc_ring (struct vnic_dev*,int *,unsigned int,unsigned int) ;
 int vnic_dev_get_res (struct vnic_dev*,int ,int ) ;
 int vnic_wq_disable (struct vnic_wq*) ;

int enic_wq_devcmd2_alloc(struct vnic_dev *vdev, struct vnic_wq *wq,
     unsigned int desc_count, unsigned int desc_size)
{
 int err;

 wq->index = 0;
 wq->vdev = vdev;

 wq->ctrl = vnic_dev_get_res(vdev, RES_TYPE_DEVCMD2, 0);
 if (!wq->ctrl)
  return -EINVAL;
 vnic_wq_disable(wq);
 err = vnic_dev_alloc_desc_ring(vdev, &wq->ring, desc_count, desc_size);

 return err;
}
