
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vm_area_struct {scalar_t__ vm_end; scalar_t__ vm_start; struct hl_cb* vm_private_data; int * vm_ops; int vm_pgoff; } ;
struct hl_fpriv {int cb_mgr; struct hl_device* hdev; } ;
struct hl_device {TYPE_1__* asic_funcs; int dev; } ;
struct hl_cb {int mmap; int lock; int size; int mmap_size; scalar_t__ kernel_address; } ;
typedef int phys_addr_t ;
struct TYPE_2__ {int (* cb_mmap ) (struct hl_device*,struct vm_area_struct*,scalar_t__,int ,int ) ;} ;


 scalar_t__ ALIGN (int ,int ) ;
 int EINVAL ;
 int PAGE_SIZE ;
 int cb_vm_ops ;
 int dev_err (int ,char*,...) ;
 struct hl_cb* hl_cb_get (struct hl_device*,int *,int ) ;
 int hl_cb_put (struct hl_cb*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct hl_device*,struct vm_area_struct*,scalar_t__,int ,int ) ;
 int virt_to_phys (void*) ;

int hl_cb_mmap(struct hl_fpriv *hpriv, struct vm_area_struct *vma)
{
 struct hl_device *hdev = hpriv->hdev;
 struct hl_cb *cb;
 phys_addr_t address;
 u32 handle;
 int rc;

 handle = vma->vm_pgoff;


 cb = hl_cb_get(hdev, &hpriv->cb_mgr, handle);
 if (!cb) {
  dev_err(hdev->dev,
   "CB mmap failed, no match to handle %d\n", handle);
  return -EINVAL;
 }


 if ((vma->vm_end - vma->vm_start) != ALIGN(cb->size, PAGE_SIZE)) {
  dev_err(hdev->dev,
   "CB mmap failed, mmap size 0x%lx != 0x%x cb size\n",
   vma->vm_end - vma->vm_start, cb->size);
  rc = -EINVAL;
  goto put_cb;
 }

 spin_lock(&cb->lock);

 if (cb->mmap) {
  dev_err(hdev->dev,
   "CB mmap failed, CB already mmaped to user\n");
  rc = -EINVAL;
  goto release_lock;
 }

 cb->mmap = 1;

 spin_unlock(&cb->lock);

 vma->vm_ops = &cb_vm_ops;






 vma->vm_private_data = cb;


 address = virt_to_phys((void *) (uintptr_t) cb->kernel_address);

 rc = hdev->asic_funcs->cb_mmap(hdev, vma, cb->kernel_address,
     address, cb->size);

 if (rc) {
  spin_lock(&cb->lock);
  cb->mmap = 0;
  goto release_lock;
 }

 cb->mmap_size = cb->size;

 return 0;

release_lock:
 spin_unlock(&cb->lock);
put_cb:
 hl_cb_put(cb);
 return rc;
}
