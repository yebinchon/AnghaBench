
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* m; } ;
struct s_smc {TYPE_3__ mib; } ;
struct fddi_addr {int * a; } ;
struct TYPE_4__ {int * a; } ;
struct TYPE_5__ {TYPE_1__ fddiMACSMTAddress; } ;


 size_t MAC0 ;

__attribute__((used)) static inline int is_my_addr(const struct s_smc *smc,
        const struct fddi_addr *addr)
{
 return(*(short *)(&addr->a[0]) ==
  *(short *)(&smc->mib.m[MAC0].fddiMACSMTAddress.a[0])
   && *(short *)(&addr->a[2]) ==
  *(short *)(&smc->mib.m[MAC0].fddiMACSMTAddress.a[2])
   && *(short *)(&addr->a[4]) ==
  *(short *)(&smc->mib.m[MAC0].fddiMACSMTAddress.a[4])) ;
}
