
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
struct vm_fault {struct page* page; int address; struct vm_area_struct* vma; } ;
struct vm_area_struct {int vm_end; int vm_start; } ;
struct page {int dummy; } ;


 int GFP_USER ;
 int VM_FAULT_OOM ;
 int __GFP_DMA32 ;
 struct page* alloc_page (int) ;
 int clear_user_highpage (struct page*,int ) ;
 int dprintk (int,char*,int ,int ,int ) ;

__attribute__((used)) static vm_fault_t videobuf_vm_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct page *page;

 dprintk(3, "fault: fault @ %08lx [vma %08lx-%08lx]\n",
  vmf->address, vma->vm_start, vma->vm_end);

 page = alloc_page(GFP_USER | __GFP_DMA32);
 if (!page)
  return VM_FAULT_OOM;
 clear_user_highpage(page, vmf->address);
 vmf->page = page;

 return 0;
}
