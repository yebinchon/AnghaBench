
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct hl_vm_phys_pg_pack {size_t npages; int * pages; int page_size; int total_size; scalar_t__ contiguous; int created_from_userptr; } ;
struct hl_vm {int dram_pg_pool_refcount; int dram_pg_pool; } ;
struct hl_device {struct hl_vm vm; } ;


 int dram_pg_pool_do_release ;
 int gen_pool_free (int ,int ,int ) ;
 int kfree (struct hl_vm_phys_pg_pack*) ;
 int kref_put (int *,int ) ;
 int kvfree (int *) ;

__attribute__((used)) static void free_phys_pg_pack(struct hl_device *hdev,
  struct hl_vm_phys_pg_pack *phys_pg_pack)
{
 struct hl_vm *vm = &hdev->vm;
 u64 i;

 if (!phys_pg_pack->created_from_userptr) {
  if (phys_pg_pack->contiguous) {
   gen_pool_free(vm->dram_pg_pool, phys_pg_pack->pages[0],
     phys_pg_pack->total_size);

   for (i = 0; i < phys_pg_pack->npages ; i++)
    kref_put(&vm->dram_pg_pool_refcount,
     dram_pg_pool_do_release);
  } else {
   for (i = 0 ; i < phys_pg_pack->npages ; i++) {
    gen_pool_free(vm->dram_pg_pool,
      phys_pg_pack->pages[i],
      phys_pg_pack->page_size);
    kref_put(&vm->dram_pg_pool_refcount,
     dram_pg_pool_do_release);
   }
  }
 }

 kvfree(phys_pg_pack->pages);
 kfree(phys_pg_pack);
}
