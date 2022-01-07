
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* u8 ;
struct vop_hw_ops {int dummy; } ;
struct TYPE_7__ {int * bus; int release; int coherent_dma_mask; int * dma_mask; struct dma_map_ops const* dma_ops; struct device* parent; } ;
struct TYPE_6__ {int device; int vendor; } ;
struct vop_device {TYPE_2__ dev; void* index; struct dma_chan* dma_ch; struct mic_mw* aper; void* dnode; struct vop_hw_ops* hw_ops; TYPE_1__ id; } ;
struct mic_mw {int dummy; } ;
struct dma_map_ops {int dummy; } ;
struct dma_chan {int dummy; } ;
struct device {int dummy; } ;


 int DMA_BIT_MASK (int) ;
 int ENOMEM ;
 struct vop_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int VOP_DEV_ANY_ID ;
 int dev_set_name (TYPE_2__*,char*,void*) ;
 int device_register (TYPE_2__*) ;
 int dma_set_mask (TYPE_2__*,int ) ;
 struct vop_device* kzalloc (int,int ) ;
 int put_device (TYPE_2__*) ;
 int vop_bus ;
 int vop_release_dev ;

struct vop_device *
vop_register_device(struct device *pdev, int id,
      const struct dma_map_ops *dma_ops,
      struct vop_hw_ops *hw_ops, u8 dnode, struct mic_mw *aper,
      struct dma_chan *chan)
{
 int ret;
 struct vop_device *vdev;

 vdev = kzalloc(sizeof(*vdev), GFP_KERNEL);
 if (!vdev)
  return ERR_PTR(-ENOMEM);

 vdev->dev.parent = pdev;
 vdev->id.device = id;
 vdev->id.vendor = VOP_DEV_ANY_ID;
 vdev->dev.dma_ops = dma_ops;
 vdev->dev.dma_mask = &vdev->dev.coherent_dma_mask;
 dma_set_mask(&vdev->dev, DMA_BIT_MASK(64));
 vdev->dev.release = vop_release_dev;
 vdev->hw_ops = hw_ops;
 vdev->dev.bus = &vop_bus;
 vdev->dnode = dnode;
 vdev->aper = aper;
 vdev->dma_ch = chan;
 vdev->index = dnode - 1;
 dev_set_name(&vdev->dev, "vop-dev%u", vdev->index);




 ret = device_register(&vdev->dev);
 if (ret)
  goto free_vdev;
 return vdev;
free_vdev:
 put_device(&vdev->dev);
 return ERR_PTR(ret);
}
