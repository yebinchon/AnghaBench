
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnic_dev {TYPE_1__* devcmd2; } ;
struct TYPE_2__ {int wq; int results_ring; } ;


 int kfree (TYPE_1__*) ;
 int vnic_dev_free_desc_ring (struct vnic_dev*,int *) ;
 int vnic_wq_disable (int *) ;
 int vnic_wq_free (int *) ;

__attribute__((used)) static void vnic_dev_deinit_devcmd2(struct vnic_dev *vdev)
{
 vnic_dev_free_desc_ring(vdev, &vdev->devcmd2->results_ring);
 vnic_wq_disable(&vdev->devcmd2->wq);
 vnic_wq_free(&vdev->devcmd2->wq);
 kfree(vdev->devcmd2);
}
