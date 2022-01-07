
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t noa_len; void* noa_data; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;
struct ath10k_vif {TYPE_2__ u; struct ath10k* ar; } ;
struct ath10k {int data_lock; } ;


 int kfree (void*) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void ath10k_p2p_noa_ie_assign(struct ath10k_vif *arvif, void *ie,
         size_t len)
{
 struct ath10k *ar = arvif->ar;

 lockdep_assert_held(&ar->data_lock);

 kfree(arvif->u.ap.noa_data);

 arvif->u.ap.noa_data = ie;
 arvif->u.ap.noa_len = len;
}
