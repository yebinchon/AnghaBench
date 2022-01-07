
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int vm_mm; } ;
typedef int pud_t ;
typedef int pte_t ;
typedef int pmd_t ;
typedef int pgd_t ;
typedef int p4d_t ;


 int HPAGE_SHIFT ;
 int PAGE_SHIFT ;
 scalar_t__ is_vm_hugetlb_page (struct vm_area_struct*) ;
 int p4d_none (int ) ;
 int * p4d_offset (int *,unsigned long) ;
 int pgd_none (int ) ;
 int * pgd_offset (int ,unsigned long) ;
 int pmd_large (int ) ;
 int pmd_none (int ) ;
 int * pmd_offset (int *,unsigned long) ;
 int pte_dirty (int ) ;
 int * pte_offset_kernel (int *,unsigned long) ;
 int pte_pfn (int ) ;
 int pte_present (int ) ;
 int pte_write (int ) ;
 int pud_none (int ) ;
 int * pud_offset (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int atomic_pte_lookup(struct vm_area_struct *vma, unsigned long vaddr,
 int write, unsigned long *paddr, int *pageshift)
{
 pgd_t *pgdp;
 p4d_t *p4dp;
 pud_t *pudp;
 pmd_t *pmdp;
 pte_t pte;

 pgdp = pgd_offset(vma->vm_mm, vaddr);
 if (unlikely(pgd_none(*pgdp)))
  goto err;

 p4dp = p4d_offset(pgdp, vaddr);
 if (unlikely(p4d_none(*p4dp)))
  goto err;

 pudp = pud_offset(p4dp, vaddr);
 if (unlikely(pud_none(*pudp)))
  goto err;

 pmdp = pmd_offset(pudp, vaddr);
 if (unlikely(pmd_none(*pmdp)))
  goto err;





  pte = *pte_offset_kernel(pmdp, vaddr);

 if (unlikely(!pte_present(pte) ||
       (write && (!pte_write(pte) || !pte_dirty(pte)))))
  return 1;

 *paddr = pte_pfn(pte) << PAGE_SHIFT;



 *pageshift = PAGE_SHIFT;

 return 0;

err:
 return 1;
}
