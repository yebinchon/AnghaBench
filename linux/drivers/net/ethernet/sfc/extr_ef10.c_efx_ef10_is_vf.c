
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int is_vf; } ;



__attribute__((used)) static bool efx_ef10_is_vf(struct efx_nic *efx)
{
 return efx->type->is_vf;
}
