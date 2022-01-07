
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;


 int EFAULT ;
 int FOLL_WRITE ;
 int HPAGE_SHIFT ;
 int PAGE_SHIFT ;
 scalar_t__ get_user_pages (unsigned long,int,int ,struct page**,int *) ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 unsigned long page_to_phys (struct page*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int non_atomic_pte_lookup(struct vm_area_struct *vma,
     unsigned long vaddr, int write,
     unsigned long *paddr, int *pageshift)
{
 struct page *page;




 *pageshift = PAGE_SHIFT;

 if (get_user_pages(vaddr, 1, write ? FOLL_WRITE : 0, &page, ((void*)0)) <= 0)
  return -EFAULT;
 *paddr = page_to_phys(page);
 put_page(page);
 return 0;
}
