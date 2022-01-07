
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct venus_hfi_device {TYPE_1__* core; } ;
struct mem_desc {int kva; int attrs; int da; int size; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int ALIGN (int ,int ) ;
 int DMA_ATTR_WRITE_COMBINE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SZ_4K ;
 int dma_alloc_attrs (struct device*,int ,int *,int ,int ) ;

__attribute__((used)) static int venus_alloc(struct venus_hfi_device *hdev, struct mem_desc *desc,
         u32 size)
{
 struct device *dev = hdev->core->dev;

 desc->attrs = DMA_ATTR_WRITE_COMBINE;
 desc->size = ALIGN(size, SZ_4K);

 desc->kva = dma_alloc_attrs(dev, desc->size, &desc->da, GFP_KERNEL,
        desc->attrs);
 if (!desc->kva)
  return -ENOMEM;

 return 0;
}
