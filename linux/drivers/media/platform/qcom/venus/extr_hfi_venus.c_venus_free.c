
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct venus_hfi_device {TYPE_1__* core; } ;
struct mem_desc {int attrs; int da; int kva; int size; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int dma_free_attrs (struct device*,int ,int ,int ,int ) ;

__attribute__((used)) static void venus_free(struct venus_hfi_device *hdev, struct mem_desc *mem)
{
 struct device *dev = hdev->core->dev;

 dma_free_attrs(dev, mem->size, mem->kva, mem->da, mem->attrs);
}
