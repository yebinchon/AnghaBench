
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_intr {scalar_t__ software_isr_flag; } ;
struct lan743x_adapter {struct lan743x_intr intr; } ;


 int ENODEV ;
 int INT_BIT_SW_GP_ ;
 int INT_EN_CLR ;
 int INT_EN_SET ;
 int INT_SET ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lan743x_intr_test_isr(struct lan743x_adapter *adapter)
{
 struct lan743x_intr *intr = &adapter->intr;
 int result = -ENODEV;
 int timeout = 10;

 intr->software_isr_flag = 0;


 lan743x_csr_write(adapter, INT_EN_SET, INT_BIT_SW_GP_);


 lan743x_csr_write(adapter, INT_SET, INT_BIT_SW_GP_);
 while ((timeout > 0) && (!(intr->software_isr_flag))) {
  usleep_range(1000, 20000);
  timeout--;
 }

 if (intr->software_isr_flag)
  result = 0;


 lan743x_csr_write(adapter, INT_EN_CLR, INT_BIT_SW_GP_);
 return result;
}
