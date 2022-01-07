
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct ath10k {int data_lock; TYPE_1__ scan; int conf_mutex; } ;






 int ath10k_scan_state_str (int) ;
 int ath10k_scan_stop (struct ath10k*) ;
 int ath10k_warn (struct ath10k*,char*,int,...) ;
 int lockdep_assert_held (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath10k_scan_abort(struct ath10k *ar)
{
 int ret;

 lockdep_assert_held(&ar->conf_mutex);

 spin_lock_bh(&ar->data_lock);

 switch (ar->scan.state) {
 case 130:



  break;
 case 128:
 case 131:
  ath10k_warn(ar, "refusing scan abortion due to invalid scan state: %s (%d)\n",
       ath10k_scan_state_str(ar->scan.state),
       ar->scan.state);
  break;
 case 129:
  ar->scan.state = 131;
  spin_unlock_bh(&ar->data_lock);

  ret = ath10k_scan_stop(ar);
  if (ret)
   ath10k_warn(ar, "failed to abort scan: %d\n", ret);

  spin_lock_bh(&ar->data_lock);
  break;
 }

 spin_unlock_bh(&ar->data_lock);
}
