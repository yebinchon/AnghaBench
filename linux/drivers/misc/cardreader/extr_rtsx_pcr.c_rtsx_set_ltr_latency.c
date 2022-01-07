
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rtsx_pcr {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* set_ltr_latency ) (struct rtsx_pcr*,int ) ;} ;


 int rtsx_comm_set_ltr_latency (struct rtsx_pcr*,int ) ;
 int stub1 (struct rtsx_pcr*,int ) ;

int rtsx_set_ltr_latency(struct rtsx_pcr *pcr, u32 latency)
{
 if (pcr->ops->set_ltr_latency)
  return pcr->ops->set_ltr_latency(pcr, latency);
 else
  return rtsx_comm_set_ltr_latency(pcr, latency);
}
