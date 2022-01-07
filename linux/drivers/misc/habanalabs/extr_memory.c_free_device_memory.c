
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hl_vm_phys_pg_pack {int total_size; int mapping_cnt; } ;
struct hl_vm {int idr_lock; int phys_pg_pack_handles; } ;
struct hl_device {int dev; int dram_used_mem; struct hl_vm vm; } ;
struct hl_ctx {int dram_phys_mem; struct hl_device* hdev; } ;


 int EINVAL ;
 int atomic64_sub (int ,int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int ,char*,int ) ;
 int free_phys_pg_pack (struct hl_device*,struct hl_vm_phys_pg_pack*) ;
 struct hl_vm_phys_pg_pack* idr_find (int *,int ) ;
 int idr_remove (int *,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int free_device_memory(struct hl_ctx *ctx, u32 handle)
{
 struct hl_device *hdev = ctx->hdev;
 struct hl_vm *vm = &hdev->vm;
 struct hl_vm_phys_pg_pack *phys_pg_pack;

 spin_lock(&vm->idr_lock);
 phys_pg_pack = idr_find(&vm->phys_pg_pack_handles, handle);
 if (phys_pg_pack) {
  if (atomic_read(&phys_pg_pack->mapping_cnt) > 0) {
   dev_err(hdev->dev, "handle %u is mapped, cannot free\n",
    handle);
   spin_unlock(&vm->idr_lock);
   return -EINVAL;
  }






  idr_remove(&vm->phys_pg_pack_handles, handle);
  spin_unlock(&vm->idr_lock);

  atomic64_sub(phys_pg_pack->total_size, &ctx->dram_phys_mem);
  atomic64_sub(phys_pg_pack->total_size, &hdev->dram_used_mem);

  free_phys_pg_pack(hdev, phys_pg_pack);
 } else {
  spin_unlock(&vm->idr_lock);
  dev_err(hdev->dev,
   "free device memory failed, no match for handle %u\n",
   handle);
  return -EINVAL;
 }

 return 0;
}
