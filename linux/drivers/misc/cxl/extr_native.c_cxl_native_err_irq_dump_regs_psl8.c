
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cxl {int dev; } ;


 int CXL_PSL_FIR1 ;
 int CXL_PSL_FIR2 ;
 int cxl_p1_read (struct cxl*,int ) ;
 int dev_crit (int *,char*,int ,int ) ;

void cxl_native_err_irq_dump_regs_psl8(struct cxl *adapter)
{
 u64 fir1, fir2;

 fir1 = cxl_p1_read(adapter, CXL_PSL_FIR1);
 fir2 = cxl_p1_read(adapter, CXL_PSL_FIR2);
 dev_crit(&adapter->dev,
   "PSL_FIR1: 0x%016llx\nPSL_FIR2: 0x%016llx\n",
   fir1, fir2);
}
