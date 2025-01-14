
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pci_device_id {int dummy; } ;
struct pci_dev {int irq; int dev; } ;
struct TYPE_5__ {int minor; TYPE_3__* queue; int * lock; int * v4l2_dev; } ;
struct TYPE_6__ {int io_modes; int min_buffers_needed; int * dev; int * lock; int gfp_flags; struct dt3155_priv* drv_priv; int * mem_ops; int * ops; int timestamp_flags; int type; } ;
struct dt3155_priv {int width; int height; int v4l2_dev; int regs; struct pci_dev* pdev; TYPE_1__ vdev; int config; int lock; TYPE_3__ vidq; int mux; int dmaq; int csr2; int std; } ;


 int ACQ_MODE_EVEN ;
 int DMA_BIT_MASK (int) ;
 int DT3155_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IRQF_SHARED ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_STD_625_50 ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VFL_TYPE_GRABBER ;
 int VT_50HZ ;
 int dev_info (int *,char*,int ) ;
 struct dt3155_priv* devm_kzalloc (int *,int,int ) ;
 int dma_set_mask_and_coherent (int *,int ) ;
 int dt3155_init_board (struct dt3155_priv*) ;
 int dt3155_irq_handler_even ;
 TYPE_1__ dt3155_vdev ;
 int free_irq (int ,struct dt3155_priv*) ;
 int mutex_init (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_release_region (struct pci_dev*,int ) ;
 int pci_request_region (struct pci_dev*,int ,int ) ;
 int pci_resource_len (struct pci_dev*,int ) ;
 int q_ops ;
 int request_irq (int ,int ,int ,int ,struct dt3155_priv*) ;
 int spin_lock_init (int *) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (TYPE_3__*) ;
 int video_register_device (TYPE_1__*,int ,int) ;
 int video_set_drvdata (TYPE_1__*,struct dt3155_priv*) ;

__attribute__((used)) static int dt3155_probe(struct pci_dev *pdev, const struct pci_device_id *id)
{
 int err;
 struct dt3155_priv *pd;

 err = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
 if (err)
  return -ENODEV;
 pd = devm_kzalloc(&pdev->dev, sizeof(*pd), GFP_KERNEL);
 if (!pd)
  return -ENOMEM;

 err = v4l2_device_register(&pdev->dev, &pd->v4l2_dev);
 if (err)
  return err;
 pd->vdev = dt3155_vdev;
 pd->vdev.v4l2_dev = &pd->v4l2_dev;
 video_set_drvdata(&pd->vdev, pd);
 pd->pdev = pdev;
 pd->std = V4L2_STD_625_50;
 pd->csr2 = VT_50HZ;
 pd->width = 768;
 pd->height = 576;
 INIT_LIST_HEAD(&pd->dmaq);
 mutex_init(&pd->mux);
 pd->vdev.lock = &pd->mux;
 pd->vidq.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 pd->vidq.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 pd->vidq.io_modes = VB2_MMAP | VB2_DMABUF | VB2_READ;
 pd->vidq.ops = &q_ops;
 pd->vidq.mem_ops = &vb2_dma_contig_memops;
 pd->vidq.drv_priv = pd;
 pd->vidq.min_buffers_needed = 2;
 pd->vidq.gfp_flags = GFP_DMA32;
 pd->vidq.lock = &pd->mux;
 pd->vidq.dev = &pdev->dev;
 pd->vdev.queue = &pd->vidq;
 err = vb2_queue_init(&pd->vidq);
 if (err < 0)
  goto err_v4l2_dev_unreg;
 spin_lock_init(&pd->lock);
 pd->config = ACQ_MODE_EVEN;
 err = pci_enable_device(pdev);
 if (err)
  goto err_v4l2_dev_unreg;
 err = pci_request_region(pdev, 0, pci_name(pdev));
 if (err)
  goto err_pci_disable;
 pd->regs = pci_iomap(pdev, 0, pci_resource_len(pd->pdev, 0));
 if (!pd->regs) {
  err = -ENOMEM;
  goto err_free_reg;
 }
 err = dt3155_init_board(pd);
 if (err)
  goto err_iounmap;
 err = request_irq(pd->pdev->irq, dt3155_irq_handler_even,
     IRQF_SHARED, DT3155_NAME, pd);
 if (err)
  goto err_iounmap;
 err = video_register_device(&pd->vdev, VFL_TYPE_GRABBER, -1);
 if (err)
  goto err_free_irq;
 dev_info(&pdev->dev, "/dev/video%i is ready\n", pd->vdev.minor);
 return 0;

err_free_irq:
 free_irq(pd->pdev->irq, pd);
err_iounmap:
 pci_iounmap(pdev, pd->regs);
err_free_reg:
 pci_release_region(pdev, 0);
err_pci_disable:
 pci_disable_device(pdev);
err_v4l2_dev_unreg:
 v4l2_device_unregister(&pd->v4l2_dev);
 return err;
}
