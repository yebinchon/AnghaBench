
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* power_saving ) (struct rtsx_pcr*) ;} ;


 int rtsx_comm_pm_power_saving (struct rtsx_pcr*) ;
 int stub1 (struct rtsx_pcr*) ;

__attribute__((used)) static void rtsx_pm_power_saving(struct rtsx_pcr *pcr)
{
 if (pcr->ops->power_saving)
  pcr->ops->power_saving(pcr);
 else
  rtsx_comm_pm_power_saving(pcr);
}
