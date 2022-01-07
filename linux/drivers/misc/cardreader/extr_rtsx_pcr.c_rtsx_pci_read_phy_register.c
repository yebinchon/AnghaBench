
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_phy ) (struct rtsx_pcr*,int ,int *) ;} ;


 int __rtsx_pci_read_phy_register (struct rtsx_pcr*,int ,int *) ;
 int stub1 (struct rtsx_pcr*,int ,int *) ;

int rtsx_pci_read_phy_register(struct rtsx_pcr *pcr, u8 addr, u16 *val)
{
 if (pcr->ops->read_phy)
  return pcr->ops->read_phy(pcr, addr, val);

 return __rtsx_pci_read_phy_register(pcr, addr, val);
}
