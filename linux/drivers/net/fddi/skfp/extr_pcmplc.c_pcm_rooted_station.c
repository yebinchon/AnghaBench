
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct s_smc {TYPE_2__* y; } ;
struct TYPE_4__ {TYPE_1__* mib; } ;
struct TYPE_3__ {scalar_t__ fddiPORTPCMState; scalar_t__ fddiPORTNeighborType; } ;


 int NUMPHYS ;
 scalar_t__ PC8_ACTIVE ;
 scalar_t__ TM ;

int pcm_rooted_station(struct s_smc *smc)
{
 int n ;

 for (n = 0 ; n < NUMPHYS ; n++) {
  if (smc->y[n].mib->fddiPORTPCMState == PC8_ACTIVE &&
      smc->y[n].mib->fddiPORTNeighborType == TM)
   return 0;
 }
 return 1;
}
