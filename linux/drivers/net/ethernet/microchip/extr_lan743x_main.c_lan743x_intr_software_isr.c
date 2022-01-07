
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lan743x_intr {int software_isr_flag; } ;
struct lan743x_adapter {struct lan743x_intr intr; } ;


 int INT_BIT_SW_GP_ ;
 int INT_STS ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;

__attribute__((used)) static void lan743x_intr_software_isr(void *context)
{
 struct lan743x_adapter *adapter = context;
 struct lan743x_intr *intr = &adapter->intr;
 u32 int_sts;

 int_sts = lan743x_csr_read(adapter, INT_STS);
 if (int_sts & INT_BIT_SW_GP_) {
  lan743x_csr_write(adapter, INT_STS, INT_BIT_SW_GP_);
  intr->software_isr_flag = 1;
 }
}
