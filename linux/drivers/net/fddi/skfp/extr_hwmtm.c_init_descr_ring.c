
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* rxd_nrdadr; struct TYPE_2__* rxd_next; void* rxd_rbctrl; } ;
union s_fp_descr {TYPE_1__ r; } ;
typedef int u_long ;
struct s_smc {int dummy; } ;


 int BMU_CHECK ;
 int DB_GEN (int,char*,union s_fp_descr volatile*) ;
 int DDI_DMA_SYNC_FORDEV ;
 int DRV_BUF_FLUSH (TYPE_1__*,int ) ;
 void* cpu_to_le32 (int ) ;
 int mac_drv_virt2phys (struct s_smc*,void*) ;

__attribute__((used)) static u_long init_descr_ring(struct s_smc *smc,
         union s_fp_descr volatile *start,
         int count)
{
 int i ;
 union s_fp_descr volatile *d1 ;
 union s_fp_descr volatile *d2 ;
 u_long phys ;

 DB_GEN(3, "descr ring starts at = %p", start);
 for (i=count-1, d1=start; i ; i--) {
  d2 = d1 ;
  d1++ ;
  d2->r.rxd_rbctrl = cpu_to_le32(BMU_CHECK) ;
  d2->r.rxd_next = &d1->r ;
  phys = mac_drv_virt2phys(smc,(void *)d1) ;
  d2->r.rxd_nrdadr = cpu_to_le32(phys) ;
 }
 DB_GEN(3, "descr ring ends at = %p", d1);
 d1->r.rxd_rbctrl = cpu_to_le32(BMU_CHECK) ;
 d1->r.rxd_next = &start->r ;
 phys = mac_drv_virt2phys(smc,(void *)start) ;
 d1->r.rxd_nrdadr = cpu_to_le32(phys) ;

 for (i=count, d1=start; i ; i--) {
  DRV_BUF_FLUSH(&d1->r,DDI_DMA_SYNC_FORDEV) ;
  d1++;
 }
 return phys;
}
