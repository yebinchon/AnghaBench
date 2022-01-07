
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40e_vsi {TYPE_1__* back; int flags; } ;
struct i40e_mac_filter {scalar_t__ state; int hlist; } ;
struct TYPE_2__ {int state; } ;


 scalar_t__ I40E_FILTER_FAILED ;
 scalar_t__ I40E_FILTER_NEW ;
 scalar_t__ I40E_FILTER_REMOVE ;
 int I40E_VSI_FLAG_FILTER_CHANGED ;
 int __I40E_MACVLAN_SYNC_PENDING ;
 int hash_del (int *) ;
 int kfree (struct i40e_mac_filter*) ;
 int set_bit (int ,int ) ;

void __i40e_del_filter(struct i40e_vsi *vsi, struct i40e_mac_filter *f)
{
 if (!f)
  return;





 if ((f->state == I40E_FILTER_FAILED) ||
     (f->state == I40E_FILTER_NEW)) {
  hash_del(&f->hlist);
  kfree(f);
 } else {
  f->state = I40E_FILTER_REMOVE;
 }

 vsi->flags |= I40E_VSI_FLAG_FILTER_CHANGED;
 set_bit(__I40E_MACVLAN_SYNC_PENDING, vsi->back->state);
}
