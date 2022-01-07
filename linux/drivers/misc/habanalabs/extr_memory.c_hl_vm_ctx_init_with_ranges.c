
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct hl_device {int dev; } ;
struct TYPE_2__ {int lock; int list; } ;
struct hl_ctx {int mem_hash_lock; TYPE_1__ host_va_range; TYPE_1__ dram_va_range; int mem_hash; int asid; struct hl_device* hdev; } ;


 int clear_va_list_locked (struct hl_device*,int *) ;
 int dev_err (int ,char*,...) ;
 int hash_init (int ) ;
 int hl_debugfs_add_ctx_mem_hash (struct hl_device*,struct hl_ctx*) ;
 int hl_mmu_ctx_fini (struct hl_ctx*) ;
 int hl_mmu_ctx_init (struct hl_ctx*) ;
 int hl_va_range_init (struct hl_device*,TYPE_1__*,int ,int ) ;
 int mutex_destroy (int *) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int hl_vm_ctx_init_with_ranges(struct hl_ctx *ctx, u64 host_range_start,
    u64 host_range_end, u64 dram_range_start,
    u64 dram_range_end)
{
 struct hl_device *hdev = ctx->hdev;
 int rc;

 rc = hl_mmu_ctx_init(ctx);
 if (rc) {
  dev_err(hdev->dev, "failed to init context %d\n", ctx->asid);
  return rc;
 }

 mutex_init(&ctx->mem_hash_lock);
 hash_init(ctx->mem_hash);

 mutex_init(&ctx->host_va_range.lock);

 rc = hl_va_range_init(hdev, &ctx->host_va_range, host_range_start,
   host_range_end);
 if (rc) {
  dev_err(hdev->dev, "failed to init host vm range\n");
  goto host_vm_err;
 }

 mutex_init(&ctx->dram_va_range.lock);

 rc = hl_va_range_init(hdev, &ctx->dram_va_range, dram_range_start,
   dram_range_end);
 if (rc) {
  dev_err(hdev->dev, "failed to init dram vm range\n");
  goto dram_vm_err;
 }

 hl_debugfs_add_ctx_mem_hash(hdev, ctx);

 return 0;

dram_vm_err:
 mutex_destroy(&ctx->dram_va_range.lock);

 mutex_lock(&ctx->host_va_range.lock);
 clear_va_list_locked(hdev, &ctx->host_va_range.list);
 mutex_unlock(&ctx->host_va_range.lock);
host_vm_err:
 mutex_destroy(&ctx->host_va_range.lock);
 mutex_destroy(&ctx->mem_hash_lock);
 hl_mmu_ctx_fini(ctx);

 return rc;
}
