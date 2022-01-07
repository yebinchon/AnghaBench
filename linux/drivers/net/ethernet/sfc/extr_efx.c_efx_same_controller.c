
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ type; scalar_t__ vpd_sn; } ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool efx_same_controller(struct efx_nic *left, struct efx_nic *right)
{
 return left->type == right->type &&
  left->vpd_sn && right->vpd_sn &&
  !strcmp(left->vpd_sn, right->vpd_sn);
}
