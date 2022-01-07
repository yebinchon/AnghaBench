
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef int u32 ;
struct hl_vm_phys_pg_pack {int flags; scalar_t__ asid; int mapping_cnt; scalar_t__ total_size; scalar_t__ offset; } ;
struct hl_vm_hash_node {int* ptr; int node; scalar_t__ vaddr; } ;
struct hl_vm {int idr_lock; int phys_pg_pack_handles; } ;
struct hl_userptr {int dummy; } ;
struct TYPE_5__ {scalar_t__ hint_addr; int handle; } ;
struct TYPE_4__ {scalar_t__ hint_addr; int host_virt_addr; } ;
struct hl_mem_in {int flags; TYPE_2__ map_device; TYPE_1__ map_host; } ;
struct hl_device {int dev; TYPE_3__* asic_funcs; struct hl_vm vm; } ;
struct hl_ctx {scalar_t__ asid; int dram_va_range; int host_va_range; int mem_hash_lock; int mem_hash; int mmu_lock; struct hl_device* hdev; } ;
typedef enum vm_type_t { ____Placeholder_vm_type_t } vm_type_t ;
struct TYPE_6__ {int (* mmu_invalidate_cache ) (struct hl_device*,int) ;} ;


 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int HL_MEM_SHARED ;
 int HL_MEM_USERPTR ;
 scalar_t__ add_va_block (struct hl_device*,int *,scalar_t__,scalar_t__) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int dev_err (int ,char*,...) ;
 int dev_warn (int ,char*,int ,scalar_t__) ;
 int free_phys_pg_pack (struct hl_device*,struct hl_vm_phys_pg_pack*) ;
 int free_userptr (struct hl_device*,struct hl_userptr*) ;
 int get_userptr_from_host_va (struct hl_device*,struct hl_mem_in*,struct hl_userptr**) ;
 scalar_t__ get_va_block (struct hl_device*,int *,scalar_t__,scalar_t__,int) ;
 int hash_add (int ,int *,scalar_t__) ;
 struct hl_vm_phys_pg_pack* idr_find (int *,int ) ;
 int init_phys_pg_pack_from_userptr (struct hl_ctx*,struct hl_userptr*,struct hl_vm_phys_pg_pack**) ;
 int kfree (struct hl_vm_hash_node*) ;
 struct hl_vm_hash_node* kzalloc (int,int ) ;
 int lower_32_bits (int ) ;
 int map_phys_page_pack (struct hl_ctx*,scalar_t__,struct hl_vm_phys_pg_pack*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct hl_device*,int) ;

__attribute__((used)) static int map_device_va(struct hl_ctx *ctx, struct hl_mem_in *args,
  u64 *device_addr)
{
 struct hl_device *hdev = ctx->hdev;
 struct hl_vm *vm = &hdev->vm;
 struct hl_vm_phys_pg_pack *phys_pg_pack;
 struct hl_userptr *userptr = ((void*)0);
 struct hl_vm_hash_node *hnode;
 enum vm_type_t *vm_type;
 u64 ret_vaddr, hint_addr;
 u32 handle = 0;
 int rc;
 bool is_userptr = args->flags & HL_MEM_USERPTR;


 *device_addr = 0;

 if (is_userptr) {
  rc = get_userptr_from_host_va(hdev, args, &userptr);
  if (rc) {
   dev_err(hdev->dev, "failed to get userptr from va\n");
   return rc;
  }

  rc = init_phys_pg_pack_from_userptr(ctx, userptr,
    &phys_pg_pack);
  if (rc) {
   dev_err(hdev->dev,
    "unable to init page pack for vaddr 0x%llx\n",
    args->map_host.host_virt_addr);
   goto init_page_pack_err;
  }

  vm_type = (enum vm_type_t *) userptr;
  hint_addr = args->map_host.hint_addr;
 } else {
  handle = lower_32_bits(args->map_device.handle);

  spin_lock(&vm->idr_lock);
  phys_pg_pack = idr_find(&vm->phys_pg_pack_handles, handle);
  if (!phys_pg_pack) {
   spin_unlock(&vm->idr_lock);
   dev_err(hdev->dev,
    "no match for handle %u\n", handle);
   return -EINVAL;
  }


  atomic_inc(&phys_pg_pack->mapping_cnt);

  spin_unlock(&vm->idr_lock);

  vm_type = (enum vm_type_t *) phys_pg_pack;

  hint_addr = args->map_device.hint_addr;
 }





 if (!is_userptr && !(phys_pg_pack->flags & HL_MEM_SHARED) &&
   phys_pg_pack->asid != ctx->asid) {
  dev_err(hdev->dev,
   "Failed to map memory, handle %u is not shared\n",
   handle);
  rc = -EPERM;
  goto shared_err;
 }

 hnode = kzalloc(sizeof(*hnode), GFP_KERNEL);
 if (!hnode) {
  rc = -ENOMEM;
  goto hnode_err;
 }

 ret_vaddr = get_va_block(hdev,
   is_userptr ? &ctx->host_va_range : &ctx->dram_va_range,
   phys_pg_pack->total_size, hint_addr, is_userptr);
 if (!ret_vaddr) {
  dev_err(hdev->dev, "no available va block for handle %u\n",
    handle);
  rc = -ENOMEM;
  goto va_block_err;
 }

 mutex_lock(&ctx->mmu_lock);

 rc = map_phys_page_pack(ctx, ret_vaddr, phys_pg_pack);
 if (rc) {
  mutex_unlock(&ctx->mmu_lock);
  dev_err(hdev->dev, "mapping page pack failed for handle %u\n",
    handle);
  goto map_err;
 }

 hdev->asic_funcs->mmu_invalidate_cache(hdev, 0);

 mutex_unlock(&ctx->mmu_lock);

 ret_vaddr += phys_pg_pack->offset;

 hnode->ptr = vm_type;
 hnode->vaddr = ret_vaddr;

 mutex_lock(&ctx->mem_hash_lock);
 hash_add(ctx->mem_hash, &hnode->node, ret_vaddr);
 mutex_unlock(&ctx->mem_hash_lock);

 *device_addr = ret_vaddr;

 if (is_userptr)
  free_phys_pg_pack(hdev, phys_pg_pack);

 return 0;

map_err:
 if (add_va_block(hdev,
   is_userptr ? &ctx->host_va_range : &ctx->dram_va_range,
   ret_vaddr,
   ret_vaddr + phys_pg_pack->total_size - 1))
  dev_warn(hdev->dev,
   "release va block failed for handle 0x%x, vaddr: 0x%llx\n",
    handle, ret_vaddr);

va_block_err:
 kfree(hnode);
hnode_err:
shared_err:
 atomic_dec(&phys_pg_pack->mapping_cnt);
 if (is_userptr)
  free_phys_pg_pack(hdev, phys_pg_pack);
init_page_pack_err:
 if (is_userptr)
  free_userptr(hdev, userptr);

 return rc;
}
