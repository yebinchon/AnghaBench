
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_fault_t ;
typedef int u64 ;
struct mm_struct {int dummy; } ;


 int CXL_PSL_DSISR_An_S ;
 int DSISR_NOHPTE ;
 unsigned long HPTE_NOHPTE_UPDATE ;
 scalar_t__ USER_REGION_ID ;
 unsigned long _PAGE_PRESENT ;
 unsigned long _PAGE_PRIVILEGED ;
 unsigned long _PAGE_READ ;
 unsigned long _PAGE_WRITE ;
 int copro_handle_mm_fault (struct mm_struct*,int,int,int *) ;
 int cpumask_set_cpu (int ,int ) ;
 int cpumask_test_cpu (int ,int ) ;
 scalar_t__ get_region_id (int) ;
 int hash_page_mm (struct mm_struct*,int,unsigned long,int,unsigned long) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int mm_cpumask (struct mm_struct*) ;
 int pr_devel (char*,int) ;
 int radix_enabled () ;
 int smp_mb () ;
 int smp_processor_id () ;

int cxl_handle_mm_fault(struct mm_struct *mm, u64 dsisr, u64 dar)
{
 vm_fault_t flt = 0;
 int result;
 unsigned long access, flags, inv_flags = 0;
 if (mm && !cpumask_test_cpu(smp_processor_id(), mm_cpumask(mm))) {
  cpumask_set_cpu(smp_processor_id(), mm_cpumask(mm));





  smp_mb();
 }
 if ((result = copro_handle_mm_fault(mm, dar, dsisr, &flt))) {
  pr_devel("copro_handle_mm_fault failed: %#x\n", result);
  return result;
 }

 if (!radix_enabled()) {




  access = _PAGE_PRESENT | _PAGE_READ;
  if (dsisr & CXL_PSL_DSISR_An_S)
   access |= _PAGE_WRITE;

  if (!mm && (get_region_id(dar) != USER_REGION_ID))
   access |= _PAGE_PRIVILEGED;

  if (dsisr & DSISR_NOHPTE)
   inv_flags |= HPTE_NOHPTE_UPDATE;

  local_irq_save(flags);
  hash_page_mm(mm, dar, access, 0x300, inv_flags);
  local_irq_restore(flags);
 }
 return 0;
}
