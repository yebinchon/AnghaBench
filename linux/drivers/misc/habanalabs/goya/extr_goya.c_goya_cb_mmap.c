
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct vm_area_struct {int vm_flags; int vm_page_prot; int vm_start; } ;
struct hl_device {int dev; } ;
typedef int phys_addr_t ;


 int PAGE_SHIFT ;
 int VM_DONTCOPY ;
 int VM_DONTDUMP ;
 int VM_DONTEXPAND ;
 int VM_IO ;
 int VM_NORESERVE ;
 int VM_PFNMAP ;
 int dev_err (int ,char*,int) ;
 int remap_pfn_range (struct vm_area_struct*,int ,int,int ,int ) ;

__attribute__((used)) static int goya_cb_mmap(struct hl_device *hdev, struct vm_area_struct *vma,
  u64 kaddress, phys_addr_t paddress, u32 size)
{
 int rc;

 vma->vm_flags |= VM_IO | VM_PFNMAP | VM_DONTEXPAND | VM_DONTDUMP |
   VM_DONTCOPY | VM_NORESERVE;

 rc = remap_pfn_range(vma, vma->vm_start, paddress >> PAGE_SHIFT,
    size, vma->vm_page_prot);
 if (rc)
  dev_err(hdev->dev, "remap_pfn_range error %d", rc);

 return rc;
}
