
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hl_userptr {int dma_mapped; int vm_type; int dir; TYPE_3__* sgt; } ;
struct TYPE_4__ {int mem_size; int host_virt_addr; } ;
struct hl_mem_in {TYPE_1__ map_host; } ;
struct hl_device {int dev; TYPE_2__* asic_funcs; } ;
struct TYPE_6__ {int nents; int sgl; } ;
struct TYPE_5__ {int (* asic_dma_map_sg ) (struct hl_device*,int ,int ,int ) ;} ;


 int DMA_BIDIRECTIONAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int VM_TYPE_USERPTR ;
 int dev_err (int ,char*) ;
 int hl_pin_host_memory (struct hl_device*,int ,int ,struct hl_userptr*) ;
 int hl_unpin_host_memory (struct hl_device*,struct hl_userptr*) ;
 int kfree (struct hl_userptr*) ;
 struct hl_userptr* kzalloc (int,int ) ;
 int stub1 (struct hl_device*,int ,int ,int ) ;

__attribute__((used)) static int get_userptr_from_host_va(struct hl_device *hdev,
  struct hl_mem_in *args, struct hl_userptr **p_userptr)
{
 struct hl_userptr *userptr;
 int rc;

 userptr = kzalloc(sizeof(*userptr), GFP_KERNEL);
 if (!userptr) {
  rc = -ENOMEM;
  goto userptr_err;
 }

 rc = hl_pin_host_memory(hdev, args->map_host.host_virt_addr,
   args->map_host.mem_size, userptr);
 if (rc) {
  dev_err(hdev->dev, "Failed to pin host memory\n");
  goto pin_err;
 }

 rc = hdev->asic_funcs->asic_dma_map_sg(hdev, userptr->sgt->sgl,
     userptr->sgt->nents, DMA_BIDIRECTIONAL);
 if (rc) {
  dev_err(hdev->dev, "failed to map sgt with DMA region\n");
  goto dma_map_err;
 }

 userptr->dma_mapped = 1;
 userptr->dir = DMA_BIDIRECTIONAL;
 userptr->vm_type = VM_TYPE_USERPTR;

 *p_userptr = userptr;

 return 0;

dma_map_err:
 hl_unpin_host_memory(hdev, userptr);
pin_err:
 kfree(userptr);
userptr_err:

 return rc;
}
