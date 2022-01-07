
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ aggregation_timeout; } ;
struct cfhsi {TYPE_2__* qhead; TYPE_1__ cfg; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;


 scalar_t__ CFHSI_MAX_PKTS ;
 int CFHSI_PRIO_BEBK ;

__attribute__((used)) static bool cfhsi_can_send_aggregate(struct cfhsi *cfhsi)
{
 int i;

 if (cfhsi->cfg.aggregation_timeout == 0)
  return 1;

 for (i = 0; i < CFHSI_PRIO_BEBK; ++i) {
  if (cfhsi->qhead[i].qlen)
   return 1;
 }


 if (cfhsi->qhead[CFHSI_PRIO_BEBK].qlen >= CFHSI_MAX_PKTS)
  return 1;

 return 0;
}
