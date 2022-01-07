
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int va; } ;
struct mic_device {int dp_dma_addr; int dma_mbdev; int scdev; int vpdev; TYPE_3__* ops; TYPE_2__* intr_ops; int * dma_ch; int aper; TYPE_1__* pdev; int num_dma_ch; int dp; TYPE_4__ mmio; } ;
struct cosm_device {int dummy; } ;
struct TYPE_7__ {int (* load_mic_fw ) (struct mic_device*,int *) ;int (* send_firmware_intr ) (struct mic_device*) ;int (* write_spad ) (struct mic_device*,int ,int) ;} ;
struct TYPE_6__ {int (* enable_interrupts ) (struct mic_device*) ;} ;
struct TYPE_5__ {int dev; } ;


 int ENODEV ;
 scalar_t__ IS_ERR (int ) ;
 int MBUS_DEV_DMA_HOST ;
 int MIC_DPHI_SPAD ;
 int MIC_DPLO_SPAD ;
 int MIC_SCIF_DEV ;
 int PTR_ERR (int ) ;
 int VOP_DEV_TRNSP ;
 int __mic_dma_ops ;
 int _mic_dma_ops ;
 struct mic_device* cosmdev_to_mdev (struct cosm_device*) ;
 int mbus_hw_ops ;
 int mbus_register_device (int *,int ,int *,int *,int,int ) ;
 int mbus_unregister_device (int ) ;
 int mic_bootparam_init (struct mic_device*) ;
 int mic_dma_ops ;
 int mic_free_dma_chans (struct mic_device*) ;
 int mic_intr_restore (struct mic_device*) ;
 int mic_request_dma_chans (struct mic_device*) ;
 int mic_smpt_restore (struct mic_device*) ;
 int scif_hw_ops ;
 int scif_register_device (int *,int ,int *,int *,int,int ,TYPE_4__*,int *,int ,int *,int *,int ,int) ;
 int scif_unregister_device (int ) ;
 int stub1 (struct mic_device*,int *) ;
 int stub2 (struct mic_device*) ;
 int stub3 (struct mic_device*,int ,int) ;
 int stub4 (struct mic_device*,int ,int) ;
 int stub5 (struct mic_device*) ;
 int vop_hw_ops ;
 int vop_register_device (int *,int ,int *,int *,int,int *,int ) ;
 int vop_unregister_device (int ) ;

__attribute__((used)) static int _mic_start(struct cosm_device *cdev, int id)
{
 struct mic_device *mdev = cosmdev_to_mdev(cdev);
 int rc;

 mic_bootparam_init(mdev);
 mdev->dma_mbdev = mbus_register_device(&mdev->pdev->dev,
            MBUS_DEV_DMA_HOST, &mic_dma_ops,
            &mbus_hw_ops, id, mdev->mmio.va);
 if (IS_ERR(mdev->dma_mbdev)) {
  rc = PTR_ERR(mdev->dma_mbdev);
  goto unlock_ret;
 }
 if (!mic_request_dma_chans(mdev)) {
  rc = -ENODEV;
  goto dma_remove;
 }
 mdev->scdev = scif_register_device(&mdev->pdev->dev, MIC_SCIF_DEV,
        &__mic_dma_ops, &scif_hw_ops,
        id + 1, 0, &mdev->mmio,
        &mdev->aper, mdev->dp, ((void*)0),
        mdev->dma_ch, mdev->num_dma_ch,
        1);
 if (IS_ERR(mdev->scdev)) {
  rc = PTR_ERR(mdev->scdev);
  goto dma_free;
 }

 mdev->vpdev = vop_register_device(&mdev->pdev->dev,
       VOP_DEV_TRNSP, &_mic_dma_ops,
       &vop_hw_ops, id + 1, &mdev->aper,
       mdev->dma_ch[0]);
 if (IS_ERR(mdev->vpdev)) {
  rc = PTR_ERR(mdev->vpdev);
  goto scif_remove;
 }

 rc = mdev->ops->load_mic_fw(mdev, ((void*)0));
 if (rc)
  goto vop_remove;
 mic_smpt_restore(mdev);
 mic_intr_restore(mdev);
 mdev->intr_ops->enable_interrupts(mdev);
 mdev->ops->write_spad(mdev, MIC_DPLO_SPAD, mdev->dp_dma_addr);
 mdev->ops->write_spad(mdev, MIC_DPHI_SPAD, mdev->dp_dma_addr >> 32);
 mdev->ops->send_firmware_intr(mdev);
 goto unlock_ret;
vop_remove:
 vop_unregister_device(mdev->vpdev);
scif_remove:
 scif_unregister_device(mdev->scdev);
dma_free:
 mic_free_dma_chans(mdev);
dma_remove:
 mbus_unregister_device(mdev->dma_mbdev);
unlock_ret:
 return rc;
}
