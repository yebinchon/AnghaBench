
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct ehea_mr {int handle; } ;
struct ehea_adapter {int handle; } ;


 size_t EHEA_MAX_RPAGE ;
 long EHEA_PAGESIZE ;
 size_t EHEA_PAGES_PER_SECTION ;
 int FORCE_FREE ;
 size_t H_PAGE_REGISTERED ;
 size_t H_SUCCESS ;
 size_t __pa (void*) ;
 void* ehea_calc_sectbase (int,int,int) ;
 int ehea_h_free_resource (int ,int ,int ) ;
 size_t ehea_h_register_rpage_mr (int ,int ,int ,int ,size_t,size_t) ;
 int pr_err (char*) ;

__attribute__((used)) static u64 ehea_reg_mr_section(int top, int dir, int idx, u64 *pt,
          struct ehea_adapter *adapter,
          struct ehea_mr *mr)
{
 void *pg;
 u64 j, m, hret;
 unsigned long k = 0;
 u64 pt_abs = __pa(pt);

 void *sectbase = ehea_calc_sectbase(top, dir, idx);

 for (j = 0; j < (EHEA_PAGES_PER_SECTION / EHEA_MAX_RPAGE); j++) {

  for (m = 0; m < EHEA_MAX_RPAGE; m++) {
   pg = sectbase + ((k++) * EHEA_PAGESIZE);
   pt[m] = __pa(pg);
  }
  hret = ehea_h_register_rpage_mr(adapter->handle, mr->handle, 0,
      0, pt_abs, EHEA_MAX_RPAGE);

  if ((hret != H_SUCCESS) &&
      (hret != H_PAGE_REGISTERED)) {
   ehea_h_free_resource(adapter->handle, mr->handle,
          FORCE_FREE);
   pr_err("register_rpage_mr failed\n");
   return hret;
  }
 }
 return hret;
}
