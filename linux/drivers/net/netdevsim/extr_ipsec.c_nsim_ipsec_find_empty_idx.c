
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct nsim_ipsec {scalar_t__ count; TYPE_1__* sa; } ;
struct TYPE_2__ {int used; } ;


 int ENOSPC ;
 scalar_t__ NSIM_IPSEC_MAX_SA_COUNT ;

__attribute__((used)) static int nsim_ipsec_find_empty_idx(struct nsim_ipsec *ipsec)
{
 u32 i;

 if (ipsec->count == NSIM_IPSEC_MAX_SA_COUNT)
  return -ENOSPC;


 for (i = 0; i < NSIM_IPSEC_MAX_SA_COUNT; i++) {
  if (!ipsec->sa[i].used)
   return i;
 }

 return -ENOSPC;
}
