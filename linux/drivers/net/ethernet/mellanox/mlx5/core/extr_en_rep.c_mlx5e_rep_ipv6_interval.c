
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* nd_tbl; } ;
struct TYPE_3__ {int parms; } ;


 int CONFIG_IPV6 ;
 int DELAY_PROBE_TIME ;
 scalar_t__ IS_ENABLED (int ) ;
 unsigned long NEIGH_VAR (int *,int ) ;
 TYPE_2__* ipv6_stub ;

__attribute__((used)) static unsigned long mlx5e_rep_ipv6_interval(void)
{
 if (IS_ENABLED(CONFIG_IPV6) && ipv6_stub->nd_tbl)
  return NEIGH_VAR(&ipv6_stub->nd_tbl->parms, DELAY_PROBE_TIME);

 return ~0UL;
}
