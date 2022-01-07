
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_device {int bus_master; } ;
struct sg_table {int nents; int sgl; } ;
struct device {int dummy; } ;


 int DMA_ATTR_SKIP_CPU_SYNC ;
 int DMA_TO_DEVICE ;
 struct vsp1_device* dev_get_drvdata (struct device*) ;
 int dma_map_sg_attrs (int ,int ,int ,int ,int ) ;

int vsp1_du_map_sg(struct device *dev, struct sg_table *sgt)
{
 struct vsp1_device *vsp1 = dev_get_drvdata(dev);






 return dma_map_sg_attrs(vsp1->bus_master, sgt->sgl, sgt->nents,
    DMA_TO_DEVICE, DMA_ATTR_SKIP_CPU_SYNC);
}
