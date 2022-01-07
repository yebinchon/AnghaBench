
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ef4_nic {TYPE_1__* type; } ;
struct TYPE_2__ {int revision; } ;



__attribute__((used)) static inline int ef4_nic_rev(struct ef4_nic *efx)
{
 return efx->type->revision;
}
