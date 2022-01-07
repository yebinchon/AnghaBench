
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* net_dev; } ;
struct TYPE_2__ {scalar_t__ reg_state; } ;


 scalar_t__ NETREG_REGISTERED ;

__attribute__((used)) static inline int ef4_dev_registered(struct ef4_nic *efx)
{
 return efx->net_dev->reg_state == NETREG_REGISTERED;
}
