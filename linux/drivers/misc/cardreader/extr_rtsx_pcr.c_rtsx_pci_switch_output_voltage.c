
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* switch_output_voltage ) (struct rtsx_pcr*,int ) ;} ;


 int stub1 (struct rtsx_pcr*,int ) ;

int rtsx_pci_switch_output_voltage(struct rtsx_pcr *pcr, u8 voltage)
{
 if (pcr->ops->switch_output_voltage)
  return pcr->ops->switch_output_voltage(pcr, voltage);

 return 0;
}
