
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int H_PARAMETER ;
 int const PAGE_MASK ;
 int ehea_h_register_rpage (int const,int const,int const,int const,int const,int const) ;
 int pr_err (char*) ;

u64 ehea_h_register_rpage_mr(const u64 adapter_handle, const u64 mr_handle,
        const u8 pagesize, const u8 queue_type,
        const u64 log_pageaddr, const u64 count)
{
 if ((count > 1) && (log_pageaddr & ~PAGE_MASK)) {
  pr_err("not on pageboundary\n");
  return H_PARAMETER;
 }

 return ehea_h_register_rpage(adapter_handle, pagesize,
         queue_type, mr_handle,
         log_pageaddr, count);
}
