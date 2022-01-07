
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int len; scalar_t__ va; } ;
struct vop_vringh {TYPE_2__ vring; int wiov; int riov; scalar_t__ buf; int buf_da; } ;
struct vop_vdev {TYPE_3__* dd; struct vop_vringh* vvr; int virtio_bh_work; int virtio_cookie; int dc; struct vop_device* vpdev; struct vop_info* vi; } ;
struct vop_info {int dummy; } ;
struct vop_device {int dev; TYPE_1__* hw_ops; } ;
struct mic_vqconfig {int address; } ;
struct mic_bootparam {int dummy; } ;
struct TYPE_6__ {int num_vq; int type; } ;
struct TYPE_4__ {int (* free_irq ) (struct vop_device*,int ,struct vop_vdev*) ;struct mic_bootparam* (* get_dp ) (struct vop_device*) ;} ;


 int DMA_BIDIRECTIONAL ;
 int VOP_INT_DMA_BUF_SIZE ;
 int dma_unmap_single (int *,int ,int ,int ) ;
 int flush_work (int *) ;
 int free_pages (unsigned long,int ) ;
 int get_order (int ) ;
 int le64_to_cpu (int ) ;
 struct mic_vqconfig* mic_vq_config (TYPE_3__*) ;
 int smp_wmb () ;
 struct mic_bootparam* stub1 (struct vop_device*) ;
 int stub2 (struct vop_device*,int ,struct vop_vdev*) ;
 int vop_dev_remove (struct vop_info*,int ,struct vop_device*) ;
 int vringh_kiov_cleanup (int *) ;

__attribute__((used)) static void vop_virtio_del_device(struct vop_vdev *vdev)
{
 struct vop_info *vi = vdev->vi;
 struct vop_device *vpdev = vdev->vpdev;
 int i;
 struct mic_vqconfig *vqconfig;
 struct mic_bootparam *bootparam = vpdev->hw_ops->get_dp(vpdev);

 if (!bootparam)
  goto skip_hot_remove;
 vop_dev_remove(vi, vdev->dc, vpdev);
skip_hot_remove:
 vpdev->hw_ops->free_irq(vpdev, vdev->virtio_cookie, vdev);
 flush_work(&vdev->virtio_bh_work);
 vqconfig = mic_vq_config(vdev->dd);
 for (i = 0; i < vdev->dd->num_vq; i++) {
  struct vop_vringh *vvr = &vdev->vvr[i];

  dma_unmap_single(&vpdev->dev,
     vvr->buf_da, VOP_INT_DMA_BUF_SIZE,
     DMA_BIDIRECTIONAL);
  free_pages((unsigned long)vvr->buf,
      get_order(VOP_INT_DMA_BUF_SIZE));
  vringh_kiov_cleanup(&vvr->riov);
  vringh_kiov_cleanup(&vvr->wiov);
  dma_unmap_single(&vpdev->dev, le64_to_cpu(vqconfig[i].address),
     vvr->vring.len, DMA_BIDIRECTIONAL);
  free_pages((unsigned long)vvr->vring.va,
      get_order(vvr->vring.len));
 }






 smp_wmb();
 vdev->dd->type = -1;
}
