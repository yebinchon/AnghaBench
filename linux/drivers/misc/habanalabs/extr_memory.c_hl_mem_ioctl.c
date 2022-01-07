
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int device_virt_addr; } ;
struct TYPE_8__ {int handle; } ;
struct TYPE_7__ {int mem_size; } ;
struct TYPE_11__ {int op; TYPE_4__ unmap; TYPE_2__ free; TYPE_1__ alloc; } ;
struct TYPE_9__ {int device_virt_addr; int handle; } ;
union hl_mem_args {TYPE_5__ in; TYPE_3__ out; } ;
typedef int u64 ;
typedef int u32 ;
struct hl_fpriv {struct hl_ctx* ctx; struct hl_device* hdev; } ;
struct hl_device {int dev; int dram_supports_virtual_memory; int mmu_enable; int in_reset; } ;
struct hl_ctx {int dummy; } ;
typedef int __u64 ;


 int EBUSY ;
 int EINVAL ;
 int ENOTTY ;




 int alloc_device_memory (struct hl_ctx*,TYPE_5__*,int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_err (int ,char*) ;
 int dev_warn_ratelimited (int ,char*,char*) ;
 int free_device_memory (struct hl_ctx*,int ) ;
 scalar_t__ hl_device_disabled_or_in_reset (struct hl_device*) ;
 int map_device_va (struct hl_ctx*,TYPE_5__*,int *) ;
 int mem_ioctl_no_mmu (struct hl_fpriv*,union hl_mem_args*) ;
 int memset (union hl_mem_args*,int ,int) ;
 int unmap_device_va (struct hl_ctx*,int ) ;

int hl_mem_ioctl(struct hl_fpriv *hpriv, void *data)
{
 union hl_mem_args *args = data;
 struct hl_device *hdev = hpriv->hdev;
 struct hl_ctx *ctx = hpriv->ctx;
 u64 device_addr = 0;
 u32 handle = 0;
 int rc;

 if (hl_device_disabled_or_in_reset(hdev)) {
  dev_warn_ratelimited(hdev->dev,
   "Device is %s. Can't execute MEMORY IOCTL\n",
   atomic_read(&hdev->in_reset) ? "in_reset" : "disabled");
  return -EBUSY;
 }

 if (!hdev->mmu_enable)
  return mem_ioctl_no_mmu(hpriv, args);

 switch (args->in.op) {
 case 131:
  if (!hdev->dram_supports_virtual_memory) {
   dev_err(hdev->dev, "DRAM alloc is not supported\n");
   rc = -EINVAL;
   goto out;
  }

  if (args->in.alloc.mem_size == 0) {
   dev_err(hdev->dev,
    "alloc size must be larger than 0\n");
   rc = -EINVAL;
   goto out;
  }
  rc = alloc_device_memory(ctx, &args->in, &handle);

  memset(args, 0, sizeof(*args));
  args->out.handle = (__u64) handle;
  break;

 case 130:
  rc = free_device_memory(ctx, args->in.free.handle);
  break;

 case 129:
  rc = map_device_va(ctx, &args->in, &device_addr);

  memset(args, 0, sizeof(*args));
  args->out.device_virt_addr = device_addr;
  break;

 case 128:
  rc = unmap_device_va(ctx,
    args->in.unmap.device_virt_addr);
  break;

 default:
  dev_err(hdev->dev, "Unknown opcode for memory IOCTL\n");
  rc = -ENOTTY;
  break;
 }

out:
 return rc;
}
