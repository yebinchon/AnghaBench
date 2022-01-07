
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct hl_vm_phys_pg_pack {int * pages; } ;
struct hl_vm {int idr_lock; int phys_pg_pack_handles; } ;
struct TYPE_2__ {int handle; } ;
struct hl_mem_in {TYPE_1__ map_device; } ;
struct hl_device {int dev; struct hl_vm vm; } ;
struct hl_ctx {struct hl_device* hdev; } ;


 int EINVAL ;
 int dev_err (int ,char*,int ) ;
 struct hl_vm_phys_pg_pack* idr_find (int *,int ) ;
 int lower_32_bits (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int get_paddr_from_handle(struct hl_ctx *ctx, struct hl_mem_in *args,
    u64 *paddr)
{
 struct hl_device *hdev = ctx->hdev;
 struct hl_vm *vm = &hdev->vm;
 struct hl_vm_phys_pg_pack *phys_pg_pack;
 u32 handle;

 handle = lower_32_bits(args->map_device.handle);
 spin_lock(&vm->idr_lock);
 phys_pg_pack = idr_find(&vm->phys_pg_pack_handles, handle);
 if (!phys_pg_pack) {
  spin_unlock(&vm->idr_lock);
  dev_err(hdev->dev, "no match for handle %u\n", handle);
  return -EINVAL;
 }

 *paddr = phys_pg_pack->pages[0];

 spin_unlock(&vm->idr_lock);

 return 0;
}
