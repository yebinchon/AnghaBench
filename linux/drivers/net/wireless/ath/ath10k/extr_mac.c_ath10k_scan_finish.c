
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath10k {int data_lock; } ;


 int __ath10k_scan_finish (struct ath10k*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void ath10k_scan_finish(struct ath10k *ar)
{
 spin_lock_bh(&ar->data_lock);
 __ath10k_scan_finish(ar);
 spin_unlock_bh(&ar->data_lock);
}
