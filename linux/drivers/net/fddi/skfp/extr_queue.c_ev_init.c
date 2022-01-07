
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ev_queue; int ev_get; int ev_put; } ;
struct s_smc {TYPE_1__ q; } ;



void ev_init(struct s_smc *smc)
{
 smc->q.ev_put = smc->q.ev_get = smc->q.ev_queue ;
}
