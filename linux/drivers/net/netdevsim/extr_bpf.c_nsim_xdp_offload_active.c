
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prog; } ;
struct netdevsim {TYPE_1__ xdp_hw; } ;



__attribute__((used)) static bool nsim_xdp_offload_active(struct netdevsim *ns)
{
 return ns->xdp_hw.prog;
}
