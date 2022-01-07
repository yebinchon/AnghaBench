
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_queue {int io_modes; int buf_struct_size; int min_buffers_needed; int * dev; int timestamp_flags; int * mem_ops; int * ops; struct atmel_isi* drv_priv; int * lock; int type; } ;
struct resource {int dummy; } ;
struct platform_device {int dev; } ;
struct frame_buffer {int dummy; } ;
struct fbd {int dummy; } ;
struct TYPE_6__ {int data_width_flags; } ;
struct atmel_isi {int width_flags; int irq; int v4l2_dev; TYPE_3__* vdev; scalar_t__ fb_descriptors_phys; scalar_t__ p_fb_descriptors; TYPE_1__ pdata; int regs; int dma_desc_head; TYPE_2__* dma_desc; int lock; struct vb2_queue queue; int video_buffer_list; int irqlock; int * dev; int * active; int pclk; } ;
struct TYPE_8__ {int device_caps; int * lock; int * ioctl_ops; int (* release ) (TYPE_3__*) ;int name; struct vb2_queue* queue; int * v4l2_dev; int * fops; } ;
struct TYPE_7__ {int list; scalar_t__ fbd_phys; scalar_t__ p_fbd; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int IORESOURCE_MEM ;
 int ISI_DATAWIDTH_10 ;
 int ISI_DATAWIDTH_8 ;
 scalar_t__ IS_ERR (int ) ;
 int KBUILD_MODNAME ;
 int PTR_ERR (int ) ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int VB2_DMABUF ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VIDEO_MAX_FRAME ;
 int atmel_isi_parse_dt (struct atmel_isi*,struct platform_device*) ;
 int dev_err (int *,char*,...) ;
 int devm_clk_get (int *,char*) ;
 int devm_ioremap_resource (int *,struct resource*) ;
 struct atmel_isi* devm_kzalloc (int *,int,int ) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct atmel_isi*) ;
 scalar_t__ dma_alloc_coherent (int *,int,scalar_t__*,int ) ;
 int dma_free_coherent (int *,int,scalar_t__,scalar_t__) ;
 int isi_fops ;
 int isi_graph_init (struct atmel_isi*) ;
 int isi_interrupt ;
 int isi_ioctl_ops ;
 int isi_video_qops ;
 int list_add (int *,int *) ;
 int mutex_init (int *) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct atmel_isi*) ;
 int pm_runtime_enable (int *) ;
 int pm_suspend_ignore_children (int *,int) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,int ,int) ;
 int v4l2_device_register (int *,int *) ;
 int v4l2_device_unregister (int *) ;
 int vb2_dma_contig_memops ;
 int vb2_queue_init (struct vb2_queue*) ;
 TYPE_3__* video_device_alloc () ;
 int video_device_release (TYPE_3__*) ;
 int video_set_drvdata (TYPE_3__*,struct atmel_isi*) ;

__attribute__((used)) static int atmel_isi_probe(struct platform_device *pdev)
{
 int irq;
 struct atmel_isi *isi;
 struct vb2_queue *q;
 struct resource *regs;
 int ret, i;

 isi = devm_kzalloc(&pdev->dev, sizeof(struct atmel_isi), GFP_KERNEL);
 if (!isi)
  return -ENOMEM;

 isi->pclk = devm_clk_get(&pdev->dev, "isi_clk");
 if (IS_ERR(isi->pclk))
  return PTR_ERR(isi->pclk);

 ret = atmel_isi_parse_dt(isi, pdev);
 if (ret)
  return ret;

 isi->active = ((void*)0);
 isi->dev = &pdev->dev;
 mutex_init(&isi->lock);
 spin_lock_init(&isi->irqlock);
 INIT_LIST_HEAD(&isi->video_buffer_list);
 INIT_LIST_HEAD(&isi->dma_desc_head);

 q = &isi->queue;


 ret = v4l2_device_register(&pdev->dev, &isi->v4l2_dev);
 if (ret)
  return ret;

 isi->vdev = video_device_alloc();
 if (!isi->vdev) {
  ret = -ENOMEM;
  goto err_vdev_alloc;
 }


 isi->vdev->fops = &isi_fops;
 isi->vdev->v4l2_dev = &isi->v4l2_dev;
 isi->vdev->queue = &isi->queue;
 strscpy(isi->vdev->name, KBUILD_MODNAME, sizeof(isi->vdev->name));
 isi->vdev->release = video_device_release;
 isi->vdev->ioctl_ops = &isi_ioctl_ops;
 isi->vdev->lock = &isi->lock;
 isi->vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_STREAMING |
  V4L2_CAP_READWRITE;
 video_set_drvdata(isi->vdev, isi);


 q->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 q->io_modes = VB2_MMAP | VB2_READ | VB2_DMABUF;
 q->lock = &isi->lock;
 q->drv_priv = isi;
 q->buf_struct_size = sizeof(struct frame_buffer);
 q->ops = &isi_video_qops;
 q->mem_ops = &vb2_dma_contig_memops;
 q->timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 q->min_buffers_needed = 2;
 q->dev = &pdev->dev;

 ret = vb2_queue_init(q);
 if (ret < 0) {
  dev_err(&pdev->dev, "failed to initialize VB2 queue\n");
  goto err_vb2_queue;
 }
 isi->p_fb_descriptors = dma_alloc_coherent(&pdev->dev,
    sizeof(struct fbd) * VIDEO_MAX_FRAME,
    &isi->fb_descriptors_phys,
    GFP_KERNEL);
 if (!isi->p_fb_descriptors) {
  dev_err(&pdev->dev, "Can't allocate descriptors!\n");
  ret = -ENOMEM;
  goto err_dma_alloc;
 }

 for (i = 0; i < VIDEO_MAX_FRAME; i++) {
  isi->dma_desc[i].p_fbd = isi->p_fb_descriptors + i;
  isi->dma_desc[i].fbd_phys = isi->fb_descriptors_phys +
     i * sizeof(struct fbd);
  list_add(&isi->dma_desc[i].list, &isi->dma_desc_head);
 }

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 isi->regs = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(isi->regs)) {
  ret = PTR_ERR(isi->regs);
  goto err_ioremap;
 }

 if (isi->pdata.data_width_flags & ISI_DATAWIDTH_8)
  isi->width_flags = 1 << 7;
 if (isi->pdata.data_width_flags & ISI_DATAWIDTH_10)
  isi->width_flags |= 1 << 9;

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  ret = irq;
  goto err_req_irq;
 }

 ret = devm_request_irq(&pdev->dev, irq, isi_interrupt, 0, "isi", isi);
 if (ret) {
  dev_err(&pdev->dev, "Unable to request irq %d\n", irq);
  goto err_req_irq;
 }
 isi->irq = irq;

 ret = isi_graph_init(isi);
 if (ret < 0)
  goto err_req_irq;

 pm_suspend_ignore_children(&pdev->dev, 1);
 pm_runtime_enable(&pdev->dev);
 platform_set_drvdata(pdev, isi);
 return 0;

err_req_irq:
err_ioremap:
 dma_free_coherent(&pdev->dev,
   sizeof(struct fbd) * VIDEO_MAX_FRAME,
   isi->p_fb_descriptors,
   isi->fb_descriptors_phys);
err_dma_alloc:
err_vb2_queue:
 video_device_release(isi->vdev);
err_vdev_alloc:
 v4l2_device_unregister(&isi->v4l2_dev);

 return ret;
}
