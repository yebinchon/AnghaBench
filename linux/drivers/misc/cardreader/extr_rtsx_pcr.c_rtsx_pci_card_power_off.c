
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* card_power_off ) (struct rtsx_pcr*,int) ;} ;


 int stub1 (struct rtsx_pcr*,int) ;

int rtsx_pci_card_power_off(struct rtsx_pcr *pcr, int card)
{
 if (pcr->ops->card_power_off)
  return pcr->ops->card_power_off(pcr, card);

 return 0;
}
