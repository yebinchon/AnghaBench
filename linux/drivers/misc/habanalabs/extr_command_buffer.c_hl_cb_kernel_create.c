
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct hl_device {int kernel_cb_mgr; int dev; } ;
struct hl_cb {int dummy; } ;


 int HL_KERNEL_ASID_ID ;
 int PAGE_SHIFT ;
 int WARN (int,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int hl_cb_create (struct hl_device*,int *,int ,int*,int ) ;
 int hl_cb_destroy (struct hl_device*,int *,int) ;
 struct hl_cb* hl_cb_get (struct hl_device*,int *,int ) ;

struct hl_cb *hl_cb_kernel_create(struct hl_device *hdev, u32 cb_size)
{
 u64 cb_handle;
 struct hl_cb *cb;
 int rc;

 rc = hl_cb_create(hdev, &hdev->kernel_cb_mgr, cb_size, &cb_handle,
   HL_KERNEL_ASID_ID);
 if (rc) {
  dev_err(hdev->dev,
   "Failed to allocate CB for the kernel driver %d\n", rc);
  return ((void*)0);
 }

 cb_handle >>= PAGE_SHIFT;
 cb = hl_cb_get(hdev, &hdev->kernel_cb_mgr, (u32) cb_handle);

 WARN(!cb, "Kernel CB handle invalid 0x%x\n", (u32) cb_handle);
 if (!cb)
  goto destroy_cb;

 return cb;

destroy_cb:
 hl_cb_destroy(hdev, &hdev->kernel_cb_mgr, cb_handle << PAGE_SHIFT);

 return ((void*)0);
}
