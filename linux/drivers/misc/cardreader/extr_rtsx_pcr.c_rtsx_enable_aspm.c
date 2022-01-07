
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_aspm ) (struct rtsx_pcr*,int) ;} ;


 int rtsx_comm_set_aspm (struct rtsx_pcr*,int) ;
 int stub1 (struct rtsx_pcr*,int) ;

__attribute__((used)) static void rtsx_enable_aspm(struct rtsx_pcr *pcr)
{
 if (pcr->ops->set_aspm)
  pcr->ops->set_aspm(pcr, 1);
 else
  rtsx_comm_set_aspm(pcr, 1);
}
