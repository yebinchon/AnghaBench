
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int device_virt_addr; int handle; } ;
struct TYPE_9__ {int host_virt_addr; } ;
struct TYPE_8__ {int handle; } ;
struct TYPE_7__ {int mem_size; } ;
struct TYPE_11__ {int op; int flags; TYPE_3__ map_host; TYPE_2__ free; TYPE_1__ alloc; } ;
union hl_mem_args {TYPE_4__ out; TYPE_5__ in; } ;
typedef int u64 ;
typedef int u32 ;
struct hl_fpriv {struct hl_ctx* ctx; struct hl_device* hdev; } ;
struct hl_device {int dev; } ;
struct hl_ctx {int dummy; } ;
typedef int __u64 ;


 int EINVAL ;
 int ENOTTY ;
 int HL_MEM_CONTIGUOUS ;




 int HL_MEM_USERPTR ;
 int alloc_device_memory (struct hl_ctx*,TYPE_5__*,int *) ;
 int dev_err (int ,char*) ;
 int free_device_memory (struct hl_ctx*,int ) ;
 int get_paddr_from_handle (struct hl_ctx*,TYPE_5__*,int *) ;
 int memset (union hl_mem_args*,int ,int) ;

__attribute__((used)) static int mem_ioctl_no_mmu(struct hl_fpriv *hpriv, union hl_mem_args *args)
{
 struct hl_device *hdev = hpriv->hdev;
 struct hl_ctx *ctx = hpriv->ctx;
 u64 device_addr = 0;
 u32 handle = 0;
 int rc;

 switch (args->in.op) {
 case 131:
  if (args->in.alloc.mem_size == 0) {
   dev_err(hdev->dev,
    "alloc size must be larger than 0\n");
   rc = -EINVAL;
   goto out;
  }




  args->in.flags |= HL_MEM_CONTIGUOUS;
  rc = alloc_device_memory(ctx, &args->in, &handle);

  memset(args, 0, sizeof(*args));
  args->out.handle = (__u64) handle;
  break;

 case 130:
  rc = free_device_memory(ctx, args->in.free.handle);
  break;

 case 129:
  if (args->in.flags & HL_MEM_USERPTR) {
   device_addr = args->in.map_host.host_virt_addr;
   rc = 0;
  } else {
   rc = get_paddr_from_handle(ctx, &args->in,
     &device_addr);
  }

  memset(args, 0, sizeof(*args));
  args->out.device_virt_addr = device_addr;
  break;

 case 128:
  rc = 0;
  break;

 default:
  dev_err(hdev->dev, "Unknown opcode for memory IOCTL\n");
  rc = -ENOTTY;
  break;
 }

out:
 return rc;
}
