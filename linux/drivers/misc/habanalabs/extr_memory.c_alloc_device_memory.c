
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct hl_vm_phys_pg_pack {int npages; int page_size; int total_size; int flags; int contiguous; int* pages; int handle; int asid; int vm_type; } ;
struct hl_vm {int dram_pg_pool; int dram_pg_pool_refcount; int idr_lock; int phys_pg_pack_handles; } ;
struct TYPE_4__ {int mem_size; } ;
struct hl_mem_in {int flags; TYPE_2__ alloc; } ;
struct TYPE_3__ {int dram_page_size; } ;
struct hl_device {int dram_used_mem; int dev; TYPE_1__ asic_prop; struct hl_vm vm; } ;
struct hl_ctx {int dram_phys_mem; int asid; struct hl_device* hdev; } ;


 int EFAULT ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int HL_MEM_CONTIGUOUS ;
 int VM_TYPE_PHYS_PACK ;
 int __ffs (int) ;
 int atomic64_add (int,int *) ;
 int dev_err (int ,char*,...) ;
 int gen_pool_alloc (int ,int) ;
 int gen_pool_free (int ,int,int) ;
 int idr_alloc (int *,struct hl_vm_phys_pg_pack*,int,int ,int ) ;
 int kfree (struct hl_vm_phys_pg_pack*) ;
 int kref_get (int *) ;
 int kvfree (int*) ;
 int* kvmalloc_array (int,int,int ) ;
 struct hl_vm_phys_pg_pack* kzalloc (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int alloc_device_memory(struct hl_ctx *ctx, struct hl_mem_in *args,
    u32 *ret_handle)
{
 struct hl_device *hdev = ctx->hdev;
 struct hl_vm *vm = &hdev->vm;
 struct hl_vm_phys_pg_pack *phys_pg_pack;
 u64 paddr = 0, total_size, num_pgs, i;
 u32 num_curr_pgs, page_size, page_shift;
 int handle, rc;
 bool contiguous;

 num_curr_pgs = 0;
 page_size = hdev->asic_prop.dram_page_size;
 page_shift = __ffs(page_size);
 num_pgs = (args->alloc.mem_size + (page_size - 1)) >> page_shift;
 total_size = num_pgs << page_shift;

 contiguous = args->flags & HL_MEM_CONTIGUOUS;

 if (contiguous) {
  paddr = (u64) gen_pool_alloc(vm->dram_pg_pool, total_size);
  if (!paddr) {
   dev_err(hdev->dev,
    "failed to allocate %llu huge contiguous pages\n",
    num_pgs);
   return -ENOMEM;
  }
 }

 phys_pg_pack = kzalloc(sizeof(*phys_pg_pack), GFP_KERNEL);
 if (!phys_pg_pack) {
  rc = -ENOMEM;
  goto pages_pack_err;
 }

 phys_pg_pack->vm_type = VM_TYPE_PHYS_PACK;
 phys_pg_pack->asid = ctx->asid;
 phys_pg_pack->npages = num_pgs;
 phys_pg_pack->page_size = page_size;
 phys_pg_pack->total_size = total_size;
 phys_pg_pack->flags = args->flags;
 phys_pg_pack->contiguous = contiguous;

 phys_pg_pack->pages = kvmalloc_array(num_pgs, sizeof(u64), GFP_KERNEL);
 if (!phys_pg_pack->pages) {
  rc = -ENOMEM;
  goto pages_arr_err;
 }

 if (phys_pg_pack->contiguous) {
  for (i = 0 ; i < num_pgs ; i++)
   phys_pg_pack->pages[i] = paddr + i * page_size;
 } else {
  for (i = 0 ; i < num_pgs ; i++) {
   phys_pg_pack->pages[i] = (u64) gen_pool_alloc(
       vm->dram_pg_pool,
       page_size);
   if (!phys_pg_pack->pages[i]) {
    dev_err(hdev->dev,
     "Failed to allocate device memory (out of memory)\n");
    rc = -ENOMEM;
    goto page_err;
   }

   num_curr_pgs++;
  }
 }

 spin_lock(&vm->idr_lock);
 handle = idr_alloc(&vm->phys_pg_pack_handles, phys_pg_pack, 1, 0,
    GFP_ATOMIC);
 spin_unlock(&vm->idr_lock);

 if (handle < 0) {
  dev_err(hdev->dev, "Failed to get handle for page\n");
  rc = -EFAULT;
  goto idr_err;
 }

 for (i = 0 ; i < num_pgs ; i++)
  kref_get(&vm->dram_pg_pool_refcount);

 phys_pg_pack->handle = handle;

 atomic64_add(phys_pg_pack->total_size, &ctx->dram_phys_mem);
 atomic64_add(phys_pg_pack->total_size, &hdev->dram_used_mem);

 *ret_handle = handle;

 return 0;

idr_err:
page_err:
 if (!phys_pg_pack->contiguous)
  for (i = 0 ; i < num_curr_pgs ; i++)
   gen_pool_free(vm->dram_pg_pool, phys_pg_pack->pages[i],
     page_size);

 kvfree(phys_pg_pack->pages);
pages_arr_err:
 kfree(phys_pg_pack);
pages_pack_err:
 if (contiguous)
  gen_pool_free(vm->dram_pg_pool, paddr, total_size);

 return rc;
}
