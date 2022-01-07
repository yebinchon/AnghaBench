
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int EHEA_BMASK_SET (int ,int const) ;
 int H_REGISTER_HEA_RPAGES ;
 int H_REG_RPAGE_PAGE_SIZE ;
 int H_REG_RPAGE_QT ;
 int ehea_plpar_hcall_norets (int ,int const,int,int const,int const,int,int ,int ) ;

u64 ehea_h_register_rpage(const u64 adapter_handle, const u8 pagesize,
     const u8 queue_type, const u64 resource_handle,
     const u64 log_pageaddr, u64 count)
{
 u64 reg_control;

 reg_control = EHEA_BMASK_SET(H_REG_RPAGE_PAGE_SIZE, pagesize)
      | EHEA_BMASK_SET(H_REG_RPAGE_QT, queue_type);

 return ehea_plpar_hcall_norets(H_REGISTER_HEA_RPAGES,
           adapter_handle,
           reg_control,
           resource_handle,
           log_pageaddr,
           count,
           0, 0);
}
