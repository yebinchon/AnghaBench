
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ CurrentBus; scalar_t__ CurrentTargetID; } ;
typedef TYPE_1__ FCDevicePage0_t ;



__attribute__((used)) static int
mptfc_FcDevPage0_cmp_func(const void *a, const void *b)
{
 FCDevicePage0_t **aa = (FCDevicePage0_t **)a;
 FCDevicePage0_t **bb = (FCDevicePage0_t **)b;

 if ((*aa)->CurrentBus == (*bb)->CurrentBus) {
  if ((*aa)->CurrentTargetID == (*bb)->CurrentTargetID)
   return 0;
  if ((*aa)->CurrentTargetID < (*bb)->CurrentTargetID)
   return -1;
  return 1;
 }
 if ((*aa)->CurrentBus < (*bb)->CurrentBus)
  return -1;
 return 1;
}
