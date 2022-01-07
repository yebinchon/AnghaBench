
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ocp_en; } ;
struct rtsx_pcr {TYPE_1__ option; } ;


 int rtsx_pci_process_ocp (struct rtsx_pcr*) ;

__attribute__((used)) static int rtsx_pci_process_ocp_interrupt(struct rtsx_pcr *pcr)
{
 if (pcr->option.ocp_en)
  rtsx_pci_process_ocp(pcr);

 return 0;
}
