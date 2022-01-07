
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int pci_func; } ;


 int QLCNIC_INFORMANT ;
 int QLCRDX (TYPE_1__*,int ) ;

void qlcnic_83xx_get_func_no(struct qlcnic_adapter *adapter)
{
 u32 val = QLCRDX(adapter->ahw, QLCNIC_INFORMANT);
 adapter->ahw->pci_func = (val >> 24) & 0xff;
}
