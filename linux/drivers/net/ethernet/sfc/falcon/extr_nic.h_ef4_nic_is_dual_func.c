
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 scalar_t__ EF4_REV_FALCON_B0 ;
 scalar_t__ ef4_nic_rev (struct ef4_nic*) ;

__attribute__((used)) static inline bool ef4_nic_is_dual_func(struct ef4_nic *efx)
{
 return ef4_nic_rev(efx) < EF4_REV_FALCON_B0;
}
