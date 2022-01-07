
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hl_vm {int init_done; int dram_pg_pool; int phys_pg_pack_handles; int idr_lock; int dram_pg_pool_refcount; } ;
struct asic_fixed_properties {scalar_t__ dram_user_base_address; scalar_t__ dram_end_address; int dram_page_size; } ;
struct hl_device {int dram_used_mem; int dev; struct hl_vm vm; struct asic_fixed_properties asic_prop; } ;


 int ENOMEM ;
 int __ffs (int ) ;
 int atomic64_set (int *,int ) ;
 int dev_err (int ,char*,...) ;
 int gen_pool_add (int ,scalar_t__,scalar_t__,int) ;
 int gen_pool_create (int ,int) ;
 int gen_pool_destroy (int ) ;
 int idr_init (int *) ;
 int kref_init (int *) ;
 int spin_lock_init (int *) ;

int hl_vm_init(struct hl_device *hdev)
{
 struct asic_fixed_properties *prop = &hdev->asic_prop;
 struct hl_vm *vm = &hdev->vm;
 int rc;

 vm->dram_pg_pool = gen_pool_create(__ffs(prop->dram_page_size), -1);
 if (!vm->dram_pg_pool) {
  dev_err(hdev->dev, "Failed to create dram page pool\n");
  return -ENOMEM;
 }

 kref_init(&vm->dram_pg_pool_refcount);

 rc = gen_pool_add(vm->dram_pg_pool, prop->dram_user_base_address,
   prop->dram_end_address - prop->dram_user_base_address,
   -1);

 if (rc) {
  dev_err(hdev->dev,
   "Failed to add memory to dram page pool %d\n", rc);
  goto pool_add_err;
 }

 spin_lock_init(&vm->idr_lock);
 idr_init(&vm->phys_pg_pack_handles);

 atomic64_set(&hdev->dram_used_mem, 0);

 vm->init_done = 1;

 return 0;

pool_add_err:
 gen_pool_destroy(vm->dram_pg_pool);

 return rc;
}
