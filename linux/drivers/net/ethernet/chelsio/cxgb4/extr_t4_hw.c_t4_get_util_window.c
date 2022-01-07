
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct adapter {int dummy; } ;


 int MEMWIN0_BASE ;
 int PCI_BASE_ADDRESS_0 ;
 int PCI_BASE_ADDRESS_MEM_MASK ;
 int t4_get_window (struct adapter*,int ,int ,int ) ;

u32 t4_get_util_window(struct adapter *adap)
{
 return t4_get_window(adap, PCI_BASE_ADDRESS_0,
        PCI_BASE_ADDRESS_MEM_MASK, MEMWIN0_BASE);
}
