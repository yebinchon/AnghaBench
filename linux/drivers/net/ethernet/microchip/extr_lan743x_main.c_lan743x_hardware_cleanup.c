
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lan743x_adapter {int dummy; } ;


 int INT_EN_CLR ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int) ;

__attribute__((used)) static void lan743x_hardware_cleanup(struct lan743x_adapter *adapter)
{
 lan743x_csr_write(adapter, INT_EN_CLR, 0xFFFFFFFF);
}
