
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_l1off_cfg_sub_d0 ) (struct rtsx_pcr*,int) ;} ;


 int stub1 (struct rtsx_pcr*,int) ;

__attribute__((used)) static void rtsx_set_l1off_sub_cfg_d0(struct rtsx_pcr *pcr, int active)
{
 if (pcr->ops->set_l1off_cfg_sub_d0)
  pcr->ops->set_l1off_cfg_sub_d0(pcr, active);
}
