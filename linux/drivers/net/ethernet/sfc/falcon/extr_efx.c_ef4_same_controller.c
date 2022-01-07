
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {scalar_t__ type; scalar_t__ vpd_sn; } ;


 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool ef4_same_controller(struct ef4_nic *left, struct ef4_nic *right)
{
 return left->type == right->type &&
  left->vpd_sn && right->vpd_sn &&
  !strcmp(left->vpd_sn, right->vpd_sn);
}
