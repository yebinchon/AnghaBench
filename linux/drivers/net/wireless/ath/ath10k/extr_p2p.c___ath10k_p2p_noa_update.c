
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_p2p_noa_info {int dummy; } ;
struct ath10k_vif {struct ath10k* ar; } ;
struct ath10k {int data_lock; } ;


 int GFP_ATOMIC ;
 int ath10k_p2p_noa_ie_assign (struct ath10k_vif*,void*,size_t) ;
 int ath10k_p2p_noa_ie_fill (void*,size_t,struct wmi_p2p_noa_info const*) ;
 size_t ath10k_p2p_noa_ie_len_compute (struct wmi_p2p_noa_info const*) ;
 void* kmalloc (size_t,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void __ath10k_p2p_noa_update(struct ath10k_vif *arvif,
        const struct wmi_p2p_noa_info *noa)
{
 struct ath10k *ar = arvif->ar;
 void *ie;
 size_t len;

 lockdep_assert_held(&ar->data_lock);

 ath10k_p2p_noa_ie_assign(arvif, ((void*)0), 0);

 len = ath10k_p2p_noa_ie_len_compute(noa);
 if (!len)
  return;

 ie = kmalloc(len, GFP_ATOMIC);
 if (!ie)
  return;

 ath10k_p2p_noa_ie_fill(ie, len, noa);
 ath10k_p2p_noa_ie_assign(arvif, ie, len);
}
