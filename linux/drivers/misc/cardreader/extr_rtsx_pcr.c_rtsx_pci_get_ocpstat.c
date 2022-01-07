
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_ocpstat ) (struct rtsx_pcr*,int *) ;} ;


 int REG_OCPSTAT ;
 int rtsx_pci_read_register (struct rtsx_pcr*,int ,int *) ;
 int stub1 (struct rtsx_pcr*,int *) ;

int rtsx_pci_get_ocpstat(struct rtsx_pcr *pcr, u8 *val)
{
 if (pcr->ops->get_ocpstat)
  return pcr->ops->get_ocpstat(pcr, val);
 else
  return rtsx_pci_read_register(pcr, REG_OCPSTAT, val);
}
